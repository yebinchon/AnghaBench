
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * heim_isemaphore ;
typedef int heim_ipc ;
struct TYPE_5__ {int * data; scalar_t__ length; } ;
typedef TYPE_1__ heim_idata ;


 int HEIM_IPC_WAIT_FOREVER ;
 int errx (int,char*,...) ;
 int heim_ipc_async (int ,TYPE_1__*,int *,int ) ;
 int heim_ipc_call (int ,TYPE_1__*,TYPE_1__*,int *) ;
 int heim_ipc_free_context (int ) ;
 int heim_ipc_init_context (char const*,int *) ;
 int * heim_ipc_semaphore_create (int ) ;
 int heim_ipc_semaphore_wait (int *,int ) ;
 int reply ;

__attribute__((used)) static void
test_ipc(const char *service)
{
    heim_isemaphore s;
    heim_idata req, rep;
    heim_ipc ipc;
    int ret;

    ret = heim_ipc_init_context(service, &ipc);
    if (ret)
 errx(1, "heim_ipc_init_context: %d", ret);

    req.length = 0;
    req.data = ((void*)0);

    ret = heim_ipc_call(ipc, &req, &rep, ((void*)0));
    if (ret)
 errx(1, "heim_ipc_call: %d", ret);

    s = heim_ipc_semaphore_create(0);
    if (s == ((void*)0))
 errx(1, "heim_ipc_semaphore_create");

    ret = heim_ipc_async(ipc, &req, s, reply);
    if (ret)
 errx(1, "heim_ipc_async: %d", ret);

    heim_ipc_semaphore_wait(s, HEIM_IPC_WAIT_FOREVER);

    heim_ipc_free_context(ipc);
}
