
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int krb5_error_code ;
struct TYPE_15__ {unsigned char* data; size_t length; } ;
typedef TYPE_1__ krb5_data ;
struct TYPE_16__ {int pid; int session; int gid; int uid; } ;
typedef TYPE_2__ kcm_client ;
typedef int heim_sipc_call ;
typedef int (* heim_ipc_complete ) (int ,int ,TYPE_1__*) ;
struct TYPE_17__ {int length; unsigned char* data; } ;
typedef TYPE_4__ heim_idata ;
typedef int heim_icred ;


 int EINVAL ;
 unsigned char KCM_PROTOCOL_VERSION_MAJOR ;
 unsigned char KCM_PROTOCOL_VERSION_MINOR ;
 int heim_ipc_cred_get_gid (int const) ;
 int heim_ipc_cred_get_pid (int const) ;
 int heim_ipc_cred_get_session (int const) ;
 int heim_ipc_cred_get_uid (int const) ;
 int kcm_context ;
 int kcm_dispatch (int ,TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int kcm_log (int,char*,unsigned char,...) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int stub1 (int ,int ,TYPE_1__*) ;
 int stub2 (int ,int ,TYPE_1__*) ;
 int stub3 (int ,int ,TYPE_1__*) ;

void
kcm_service(void *ctx, const heim_idata *req,
     const heim_icred cred,
     heim_ipc_complete complete,
     heim_sipc_call cctx)
{
    kcm_client peercred;
    krb5_error_code ret;
    krb5_data request, rep;
    unsigned char *buf;
    size_t len;

    krb5_data_zero(&rep);

    peercred.uid = heim_ipc_cred_get_uid(cred);
    peercred.gid = heim_ipc_cred_get_gid(cred);
    peercred.pid = heim_ipc_cred_get_pid(cred);
    peercred.session = heim_ipc_cred_get_session(cred);

    if (req->length < 4) {
 kcm_log(1, "malformed request from process %d (too short)",
  peercred.pid);
 (*complete)(cctx, EINVAL, ((void*)0));
 return;
    }

    buf = req->data;
    len = req->length;

    if (buf[0] != KCM_PROTOCOL_VERSION_MAJOR ||
 buf[1] != KCM_PROTOCOL_VERSION_MINOR) {
 kcm_log(1, "incorrect protocol version %d.%d from process %d",
  buf[0], buf[1], peercred.pid);
 (*complete)(cctx, EINVAL, ((void*)0));
 return;
    }

    request.data = buf + 2;
    request.length = len - 2;



    ret = kcm_dispatch(kcm_context, &peercred, &request, &rep);

    (*complete)(cctx, ret, &rep);
    krb5_data_free(&rep);
}
