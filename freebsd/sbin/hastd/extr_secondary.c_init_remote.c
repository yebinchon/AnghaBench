
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct nv {int dummy; } ;
struct hast_resource {scalar_t__ hr_resuid; int hr_remotein; int hr_remoteaddr; void* hr_secondary_remotecnt; void* hr_secondary_localcnt; void* hr_primary_remotecnt; void* hr_primary_localcnt; int hr_local_sectorsize; scalar_t__ hr_extentsize; scalar_t__ hr_local_mediasize; int hr_localfd; scalar_t__ hr_datasize; int hr_remoteout; } ;
typedef scalar_t__ ssize_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int errmsg ;


 int EVENT_SPLITBRAIN ;
 int EX_CONFIG ;
 int EX_NOINPUT ;
 int EX_TEMPFAIL ;
 int HAST_SYNCSRC_PRIMARY ;
 int HAST_SYNCSRC_SECONDARY ;
 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ METADATA_SIZE ;
 int PJDLOG_ASSERT (int) ;
 size_t activemap_calc_ondisk_size (scalar_t__,scalar_t__,int ) ;
 int event_send (struct hast_resource*,int ) ;
 int exit (int ) ;
 int free (unsigned char*) ;
 int hast_proto_send (struct hast_resource*,int ,struct nv*,unsigned char*,size_t) ;
 unsigned char* malloc (size_t) ;
 int memset (unsigned char*,int,size_t) ;
 int metadata_write (struct hast_resource*) ;
 int nv_add_int32 (struct nv*,int ,char*) ;
 int nv_add_int64 (struct nv*,int ,char*) ;
 int nv_add_int8 (struct nv*,int,char*) ;
 int nv_add_string (struct nv*,char*,char*) ;
 int nv_add_uint32 (struct nv*,int ,char*) ;
 int nv_add_uint64 (struct nv*,void*,char*) ;
 int nv_add_uint8 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 scalar_t__ nv_exists (struct nv*,char*) ;
 int nv_free (struct nv*) ;
 void* nv_get_uint64 (struct nv*,char*) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_error (char*,...) ;
 int pjdlog_exit (int ,char*,...) ;
 int pjdlog_exitx (int ,char*,size_t) ;
 int pjdlog_warning (char*,int ,int ,int ,int ) ;
 scalar_t__ pread (int ,unsigned char*,size_t,scalar_t__) ;
 int proto_recv (int ,int *,int ) ;
 int proto_send (int ,int *,int ) ;
 int snprintf (char*,int,char*,int ,int ) ;

__attribute__((used)) static void
init_remote(struct hast_resource *res, struct nv *nvin)
{
 uint64_t resuid;
 struct nv *nvout;
 unsigned char *map;
 size_t mapsize;







 nvout = nv_alloc();
 nv_add_int64(nvout, (int64_t)res->hr_datasize, "datasize");
 nv_add_int32(nvout, (int32_t)res->hr_extentsize, "extentsize");
 resuid = nv_get_uint64(nvin, "resuid");
 res->hr_primary_localcnt = nv_get_uint64(nvin, "localcnt");
 res->hr_primary_remotecnt = nv_get_uint64(nvin, "remotecnt");
 nv_add_uint64(nvout, res->hr_secondary_localcnt, "localcnt");
 nv_add_uint64(nvout, res->hr_secondary_remotecnt, "remotecnt");
 mapsize = activemap_calc_ondisk_size(res->hr_local_mediasize -
     METADATA_SIZE, res->hr_extentsize, res->hr_local_sectorsize);
 map = malloc(mapsize);
 if (map == ((void*)0)) {
  pjdlog_exitx(EX_TEMPFAIL,
      "Unable to allocate memory (%zu bytes) for activemap.",
      mapsize);
 }
 if (res->hr_resuid == 0) {






  PJDLOG_ASSERT(res->hr_secondary_localcnt == 0);
  res->hr_resuid = resuid;
  if (metadata_write(res) == -1)
   exit(EX_NOINPUT);
  if (nv_exists(nvin, "virgin")) {
   free(map);
   map = ((void*)0);
   mapsize = 0;
  } else {
   memset(map, 0xff, mapsize);
  }
  nv_add_int8(nvout, 1, "virgin");
  nv_add_uint8(nvout, HAST_SYNCSRC_PRIMARY, "syncsrc");
 } else if (res->hr_resuid != resuid) {
  char errmsg[256];

  free(map);
  (void)snprintf(errmsg, sizeof(errmsg),
      "Resource unique ID mismatch (primary=%ju, secondary=%ju).",
      (uintmax_t)resuid, (uintmax_t)res->hr_resuid);
  pjdlog_error("%s", errmsg);
  nv_add_string(nvout, errmsg, "errmsg");
  if (hast_proto_send(res, res->hr_remotein, nvout,
      ((void*)0), 0) == -1) {
   pjdlog_exit(EX_TEMPFAIL,
       "Unable to send response to %s",
       res->hr_remoteaddr);
  }
  nv_free(nvout);
  exit(EX_CONFIG);
 } else if (

     (res->hr_secondary_localcnt > res->hr_primary_remotecnt &&
      res->hr_secondary_remotecnt == res->hr_primary_localcnt) ||

     (res->hr_secondary_localcnt == res->hr_primary_remotecnt &&
      res->hr_secondary_remotecnt == res->hr_primary_localcnt) ||

     (res->hr_secondary_localcnt == res->hr_primary_remotecnt &&
      res->hr_secondary_remotecnt < res->hr_primary_localcnt)) {






  if (pread(res->hr_localfd, map, mapsize, METADATA_SIZE) !=
      (ssize_t)mapsize) {
   pjdlog_exit(LOG_ERR, "Unable to read activemap");
  }
  if (res->hr_secondary_localcnt > res->hr_primary_remotecnt &&
       res->hr_secondary_remotecnt == res->hr_primary_localcnt) {

   nv_add_uint8(nvout, HAST_SYNCSRC_SECONDARY, "syncsrc");
  } else {




   nv_add_uint8(nvout, HAST_SYNCSRC_PRIMARY, "syncsrc");
  }
 } else if (res->hr_secondary_localcnt > res->hr_primary_remotecnt &&
      res->hr_primary_localcnt > res->hr_secondary_remotecnt) {



  free(map);
  pjdlog_error("Split-brain detected, exiting.");
  nv_add_string(nvout, "Split-brain condition!", "errmsg");
  if (hast_proto_send(res, res->hr_remotein, nvout,
      ((void*)0), 0) == -1) {
   pjdlog_exit(EX_TEMPFAIL,
       "Unable to send response to %s",
       res->hr_remoteaddr);
  }
  nv_free(nvout);

  event_send(res, EVENT_SPLITBRAIN);
  exit(EX_CONFIG);
 } else {





  PJDLOG_ASSERT(res->hr_secondary_localcnt < res->hr_primary_remotecnt ||
      res->hr_primary_localcnt < res->hr_secondary_remotecnt);
  mapsize = activemap_calc_ondisk_size(res->hr_local_mediasize -
      METADATA_SIZE, res->hr_extentsize,
      res->hr_local_sectorsize);
  memset(map, 0xff, mapsize);
  if (res->hr_secondary_localcnt > res->hr_primary_remotecnt) {

   nv_add_uint8(nvout, HAST_SYNCSRC_SECONDARY, "syncsrc");
  } else {

   nv_add_uint8(nvout, HAST_SYNCSRC_PRIMARY, "syncsrc");
  }
  pjdlog_warning("This should never happen, asking for full synchronization (primary(local=%ju, remote=%ju), secondary(local=%ju, remote=%ju)).",
      (uintmax_t)res->hr_primary_localcnt,
      (uintmax_t)res->hr_primary_remotecnt,
      (uintmax_t)res->hr_secondary_localcnt,
      (uintmax_t)res->hr_secondary_remotecnt);
 }
 nv_add_uint32(nvout, (uint32_t)mapsize, "mapsize");
 if (hast_proto_send(res, res->hr_remotein, nvout, map, mapsize) == -1) {
  pjdlog_exit(EX_TEMPFAIL, "Unable to send activemap to %s",
      res->hr_remoteaddr);
 }
 if (map != ((void*)0))
  free(map);
 nv_free(nvout);





}
