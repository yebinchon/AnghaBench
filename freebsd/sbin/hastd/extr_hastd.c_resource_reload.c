
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;
struct hast_resource {scalar_t__ hr_role; int hr_ctrl; scalar_t__ hr_metaflush; int hr_exec; scalar_t__ hr_timeout; scalar_t__ hr_compression; scalar_t__ hr_checksum; scalar_t__ hr_replication; int hr_sourceaddr; int hr_remoteaddr; } ;
typedef int int32_t ;


 int CONTROL_RELOAD ;
 scalar_t__ HAST_ROLE_PRIMARY ;
 int LOG_ERR ;
 int PJDLOG_ASSERT (int) ;
 int hast_proto_recv_hdr (int ,struct nv**) ;
 int hast_proto_send (struct hast_resource const*,int ,struct nv*,int *,int ) ;
 int nv_add_int32 (struct nv*,int ,char*) ;
 int nv_add_string (struct nv*,int ,char*) ;
 int nv_add_uint8 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 scalar_t__ nv_error (struct nv*) ;
 int nv_free (struct nv*) ;
 int nv_get_int16 (struct nv*,char*) ;
 int pjdlog_common (int ,int ,int,char*) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_error (char*) ;

__attribute__((used)) static void
resource_reload(const struct hast_resource *res)
{
 struct nv *nvin, *nvout;
 int error;

 PJDLOG_ASSERT(res->hr_role == HAST_ROLE_PRIMARY);

 nvout = nv_alloc();
 nv_add_uint8(nvout, CONTROL_RELOAD, "cmd");
 nv_add_string(nvout, res->hr_remoteaddr, "remoteaddr");
 nv_add_string(nvout, res->hr_sourceaddr, "sourceaddr");
 nv_add_int32(nvout, (int32_t)res->hr_replication, "replication");
 nv_add_int32(nvout, (int32_t)res->hr_checksum, "checksum");
 nv_add_int32(nvout, (int32_t)res->hr_compression, "compression");
 nv_add_int32(nvout, (int32_t)res->hr_timeout, "timeout");
 nv_add_string(nvout, res->hr_exec, "exec");
 nv_add_int32(nvout, (int32_t)res->hr_metaflush, "metaflush");
 if (nv_error(nvout) != 0) {
  nv_free(nvout);
  pjdlog_error("Unable to allocate header for reload message.");
  return;
 }
 if (hast_proto_send(res, res->hr_ctrl, nvout, ((void*)0), 0) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to send reload message");
  nv_free(nvout);
  return;
 }
 nv_free(nvout);


 if (hast_proto_recv_hdr(res->hr_ctrl, &nvin) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to receive reload reply");
  return;
 }
 error = nv_get_int16(nvin, "error");
 nv_free(nvin);
 if (error != 0) {
  pjdlog_common(LOG_ERR, 0, error, "Reload failed");
  return;
 }
}
