
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssh {TYPE_1__* authctxt; } ;
struct TYPE_3__ {int success; } ;
typedef TYPE_1__ Authctxt ;


 int DISPATCH_BLOCK ;
 int SSH2_MSG_SERVICE_REQUEST ;
 struct ssh* active_state ;
 int dispatch_protocol_error ;
 int input_service_request ;
 int ssh_dispatch_init (struct ssh*,int *) ;
 int ssh_dispatch_run_fatal (struct ssh*,int ,int *) ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;

void
do_authentication2(Authctxt *authctxt)
{
 struct ssh *ssh = active_state;
 ssh->authctxt = authctxt;
 ssh_dispatch_init(ssh, &dispatch_protocol_error);
 ssh_dispatch_set(ssh, SSH2_MSG_SERVICE_REQUEST, &input_service_request);
 ssh_dispatch_run_fatal(ssh, DISPATCH_BLOCK, &authctxt->success);
 ssh->authctxt = ((void*)0);
}
