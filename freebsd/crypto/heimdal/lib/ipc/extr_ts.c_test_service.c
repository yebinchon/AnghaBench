
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int heim_sipc_call ;
typedef int (* heim_ipc_complete ) (int ,int ,TYPE_1__*) ;
struct TYPE_6__ {int * data; scalar_t__ length; } ;
typedef TYPE_1__ heim_idata ;
typedef int heim_icred ;


 int printf (char*) ;
 int stub1 (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
test_service(void *ctx, const heim_idata *req,
      const heim_icred cred,
      heim_ipc_complete complete,
      heim_sipc_call cctx)
{
    heim_idata rep;
    printf("got request\n");
    rep.length = 0;
    rep.data = ((void*)0);
    (*complete)(cctx, 0, &rep);
}
