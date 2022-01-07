
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hio {int hio_cmd; unsigned char* hio_data; size_t hio_length; void* hio_error; scalar_t__ hio_offset; } ;
struct hast_resource {int hr_localflush; int hr_localfd; scalar_t__ hr_localoff; int hr_stat_activemap_write_error; int hr_local_sectorsize; int hr_extentsize; scalar_t__ hr_local_mediasize; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;


 void* EIO ;
 void* EOPNOTSUPP ;




 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ METADATA_SIZE ;
 int PJDLOG_ABORT (char*,int) ;
 int QUEUE_INSERT (int ,struct hio*) ;
 int QUEUE_TAKE (int ,struct hio*) ;
 size_t activemap_calc_ondisk_size (scalar_t__,int ,int ) ;
 unsigned char* calloc (int,size_t) ;
 int disk ;
 void* errno ;
 int free (unsigned char*) ;
 scalar_t__ g_delete (int ,scalar_t__,size_t) ;
 scalar_t__ g_flush (int ) ;
 int pjdlog_debug (int,char*,...) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_warning (char*) ;
 scalar_t__ pread (int ,unsigned char*,size_t,scalar_t__) ;
 scalar_t__ pwrite (int ,unsigned char*,size_t,scalar_t__) ;
 int reqlog (int ,int,int,struct hio*,char*,...) ;
 int send ;

__attribute__((used)) static void *
disk_thread(void *arg)
{
 struct hast_resource *res = arg;
 struct hio *hio;
 ssize_t ret;
 bool clear_activemap, logerror;

 clear_activemap = 1;

 for (;;) {
  pjdlog_debug(2, "disk: Taking request.");
  QUEUE_TAKE(disk, hio);
  while (clear_activemap) {
   unsigned char *map;
   size_t mapsize;






   mapsize =
       activemap_calc_ondisk_size(res->hr_local_mediasize -
       METADATA_SIZE, res->hr_extentsize,
       res->hr_local_sectorsize);
   map = calloc(1, mapsize);
   if (map == ((void*)0)) {
    pjdlog_warning("Unable to allocate memory to clear local activemap.");
    break;
   }
   if (pwrite(res->hr_localfd, map, mapsize,
       METADATA_SIZE) != (ssize_t)mapsize) {
    pjdlog_errno(LOG_WARNING,
        "Unable to store cleared activemap");
    free(map);
    res->hr_stat_activemap_write_error++;
    break;
   }
   free(map);
   clear_activemap = 0;
   pjdlog_debug(1, "Local activemap cleared.");
   break;
  }
  reqlog(LOG_DEBUG, 2, -1, hio, "disk: (%p) Got request: ", hio);
  logerror = 1;

  switch (hio->hio_cmd) {
  case 129:
   ret = pread(res->hr_localfd, hio->hio_data,
       hio->hio_length,
       hio->hio_offset + res->hr_localoff);
   if (ret == -1)
    hio->hio_error = errno;
   else if (ret != (int64_t)hio->hio_length)
    hio->hio_error = EIO;
   else
    hio->hio_error = 0;
   break;
  case 128:
   ret = pwrite(res->hr_localfd, hio->hio_data,
       hio->hio_length,
       hio->hio_offset + res->hr_localoff);
   if (ret == -1)
    hio->hio_error = errno;
   else if (ret != (int64_t)hio->hio_length)
    hio->hio_error = EIO;
   else
    hio->hio_error = 0;
   break;
  case 131:
   ret = g_delete(res->hr_localfd,
       hio->hio_offset + res->hr_localoff,
       hio->hio_length);
   if (ret == -1)
    hio->hio_error = errno;
   else
    hio->hio_error = 0;
   break;
  case 130:
   if (!res->hr_localflush) {
    ret = -1;
    hio->hio_error = EOPNOTSUPP;
    logerror = 0;
    break;
   }
   ret = g_flush(res->hr_localfd);
   if (ret == -1) {
    if (errno == EOPNOTSUPP)
     res->hr_localflush = 0;
    hio->hio_error = errno;
   } else {
    hio->hio_error = 0;
   }
   break;
  default:
   PJDLOG_ABORT("Unexpected command (cmd=%hhu).",
       hio->hio_cmd);
  }
  if (logerror && hio->hio_error != 0) {
   reqlog(LOG_ERR, 0, hio->hio_error, hio,
       "Request failed: ");
  }
  pjdlog_debug(2, "disk: (%p) Moving request to the send queue.",
      hio);
  QUEUE_INSERT(send, hio);
 }

 return (((void*)0));
}
