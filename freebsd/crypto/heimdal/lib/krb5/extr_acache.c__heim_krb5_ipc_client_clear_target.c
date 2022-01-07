
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_target () ;
 int init_ccapi (int *) ;
 int stub1 () ;

void
_heim_krb5_ipc_client_clear_target(void)
{
    init_ccapi(((void*)0));
    if (clear_target != ((void*)0))
        (*clear_target)();
}
