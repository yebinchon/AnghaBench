
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;
struct hast_resource {int hr_ctrl; } ;


 int CONTROL_STATUS ;
 int ENOENT ;
 int LOG_ERR ;
 int errno ;
 int hast_proto_recv_hdr (int ,struct nv**) ;
 int hast_proto_send (struct hast_resource*,int ,struct nv*,int *,int ) ;
 int nv_add_int16 (struct nv*,int,char*) ;
 int nv_add_string (struct nv*,char const*,char*,unsigned int) ;
 int nv_add_uint32 (struct nv*,int ,char*,unsigned int) ;
 int nv_add_uint64 (struct nv*,int ,char*,unsigned int) ;
 int nv_add_uint8 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 int nv_error (struct nv*) ;
 int nv_free (struct nv*) ;
 int nv_get_int16 (struct nv*,char*) ;
 char* nv_get_string (struct nv*,char*) ;
 int nv_get_uint32 (struct nv*,char*) ;
 int nv_get_uint64 (struct nv*,char*) ;
 int pjdlog_common (int ,int ,int,char*) ;
 int pjdlog_errno (int ,char*) ;

__attribute__((used)) static void
control_status_worker(struct hast_resource *res, struct nv *nvout,
    unsigned int no)
{
 struct nv *cnvin, *cnvout;
 const char *str;
 int error;

 cnvin = ((void*)0);




 cnvout = nv_alloc();
 nv_add_uint8(cnvout, CONTROL_STATUS, "cmd");
 error = nv_error(cnvout);
 if (error != 0) {
  pjdlog_common(LOG_ERR, 0, error,
      "Unable to prepare control header");
  goto end;
 }
 if (hast_proto_send(res, res->hr_ctrl, cnvout, ((void*)0), 0) == -1) {
  error = errno;
  pjdlog_errno(LOG_ERR, "Unable to send control header");
  goto end;
 }




 if (hast_proto_recv_hdr(res->hr_ctrl, &cnvin) == -1) {
  error = errno;
  pjdlog_errno(LOG_ERR, "Unable to receive control header");
  goto end;
 }

 error = nv_get_int16(cnvin, "error");
 if (error != 0)
  goto end;

 if ((str = nv_get_string(cnvin, "status")) == ((void*)0)) {
  error = ENOENT;
  pjdlog_errno(LOG_ERR, "Field 'status' is missing.");
  goto end;
 }
 nv_add_string(nvout, str, "status%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "dirty"), "dirty%u", no);
 nv_add_uint32(nvout, nv_get_uint32(cnvin, "extentsize"),
     "extentsize%u", no);
 nv_add_uint32(nvout, nv_get_uint32(cnvin, "keepdirty"),
     "keepdirty%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_read"),
     "stat_read%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_write"),
     "stat_write%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_delete"),
     "stat_delete%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_flush"),
     "stat_flush%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_activemap_update"),
     "stat_activemap_update%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_read_error"),
     "stat_read_error%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_write_error"),
     "stat_write_error%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_delete_error"),
     "stat_delete_error%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "stat_flush_error"),
     "stat_flush_error%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "idle_queue_size"),
     "idle_queue_size%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "local_queue_size"),
     "local_queue_size%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "send_queue_size"),
     "send_queue_size%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "recv_queue_size"),
     "recv_queue_size%u", no);
 nv_add_uint64(nvout, nv_get_uint64(cnvin, "done_queue_size"),
     "done_queue_size%u", no);
end:
 if (cnvin != ((void*)0))
  nv_free(cnvin);
 if (cnvout != ((void*)0))
  nv_free(cnvout);
 if (error != 0)
  nv_add_int16(nvout, error, "error");
}
