
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct nv {int dummy; } ;
struct hast_resource {int hr_extentsize; int hr_ctrl; int hr_role; int (* output_status_aux ) (struct nv*) ;scalar_t__ hr_stat_activemap_flush_error; scalar_t__ hr_stat_flush_error; scalar_t__ hr_stat_delete_error; scalar_t__ hr_stat_activemap_write_error; scalar_t__ hr_stat_write_error; scalar_t__ hr_stat_read_error; scalar_t__ hr_stat_activemap_update; scalar_t__ hr_stat_flush; scalar_t__ hr_stat_delete; scalar_t__ hr_stat_write; scalar_t__ hr_stat_read; int hr_amp; int hr_keepdirty; int * hr_remoteout; int * hr_remotein; } ;




 int EINVAL ;
 int HAST_ROLE_PRIMARY ;
 int LOG_ERR ;
 int PJDLOG_ASSERT (int) ;
 int SIGTERM ;
 int activemap_ndirty (int ) ;
 int getpid () ;
 int hast_proto_recv_hdr (int ,struct nv**) ;
 int hast_proto_send (int *,int ,struct nv*,int *,int ) ;
 int kill (int ,int ) ;
 int nv_add_int16 (struct nv*,int ,char*) ;
 int nv_add_string (struct nv*,char*,char*) ;
 int nv_add_uint32 (struct nv*,int ,char*) ;
 int nv_add_uint64 (struct nv*,scalar_t__,char*) ;
 struct nv* nv_alloc () ;
 scalar_t__ nv_error (struct nv*) ;
 int nv_free (struct nv*) ;
 int nv_get_uint8 (struct nv*,char*) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_error (char*) ;
 int primary_config_reload (struct hast_resource*,struct nv*) ;
 int pthread_exit (int *) ;
 scalar_t__ sigexit_received ;
 int stub1 (struct nv*) ;

void *
ctrl_thread(void *arg)
{
 struct hast_resource *res = arg;
 struct nv *nvin, *nvout;
 uint8_t cmd;

 for (;;) {
  if (hast_proto_recv_hdr(res->hr_ctrl, &nvin) == -1) {
   if (sigexit_received)
    pthread_exit(((void*)0));
   pjdlog_errno(LOG_ERR,
       "Unable to receive control message");
   kill(getpid(), SIGTERM);
   pthread_exit(((void*)0));
  }
  cmd = nv_get_uint8(nvin, "cmd");
  if (cmd == 0) {
   pjdlog_error("Control message is missing 'cmd' field.");
   nv_free(nvin);
   continue;
  }
  nvout = nv_alloc();
  switch (cmd) {
  case 128:
   if (res->hr_remotein != ((void*)0) &&
       res->hr_remoteout != ((void*)0)) {
    nv_add_string(nvout, "complete", "status");
   } else {
    nv_add_string(nvout, "degraded", "status");
   }
   nv_add_uint32(nvout, (uint32_t)res->hr_extentsize,
       "extentsize");
   if (res->hr_role == HAST_ROLE_PRIMARY) {
    nv_add_uint32(nvout,
        (uint32_t)res->hr_keepdirty, "keepdirty");
    nv_add_uint64(nvout,
        (uint64_t)(activemap_ndirty(res->hr_amp) *
        res->hr_extentsize), "dirty");
   } else {
    nv_add_uint32(nvout, (uint32_t)0, "keepdirty");
    nv_add_uint64(nvout, (uint64_t)0, "dirty");
   }
   nv_add_uint64(nvout, res->hr_stat_read, "stat_read");
   nv_add_uint64(nvout, res->hr_stat_write, "stat_write");
   nv_add_uint64(nvout, res->hr_stat_delete,
       "stat_delete");
   nv_add_uint64(nvout, res->hr_stat_flush, "stat_flush");
   nv_add_uint64(nvout, res->hr_stat_activemap_update,
       "stat_activemap_update");
   nv_add_uint64(nvout, res->hr_stat_read_error,
       "stat_read_error");
   nv_add_uint64(nvout, res->hr_stat_write_error +
       res->hr_stat_activemap_write_error,
       "stat_write_error");
   nv_add_uint64(nvout, res->hr_stat_delete_error,
       "stat_delete_error");
   nv_add_uint64(nvout, res->hr_stat_flush_error +
       res->hr_stat_activemap_flush_error,
       "stat_flush_error");
   res->output_status_aux(nvout);
   nv_add_int16(nvout, 0, "error");
   break;
  case 129:





   PJDLOG_ASSERT(res->hr_role == HAST_ROLE_PRIMARY);
   primary_config_reload(res, nvin);
   nv_add_int16(nvout, 0, "error");
   break;
  default:
   nv_add_int16(nvout, EINVAL, "error");
   break;
  }
  nv_free(nvin);
  if (nv_error(nvout) != 0) {
   pjdlog_error("Unable to create answer on control message.");
   nv_free(nvout);
   continue;
  }
  if (hast_proto_send(((void*)0), res->hr_ctrl, nvout, ((void*)0), 0) == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable to send reply to control message");
  }
  nv_free(nvout);
 }

 return (((void*)0));
}
