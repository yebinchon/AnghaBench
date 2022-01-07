
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ mach_port_t ;
typedef TYPE_1__* heim_sipc ;
typedef int heim_ipc_callback ;
struct TYPE_6__ {int callback; void* userctx; int release; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 scalar_t__ MACH_PORT_NULL ;
 int MACH_PORT_RIGHT_RECEIVE ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 scalar_t__ mach_checkin_or_register (char const*) ;
 int mach_init (char const*,scalar_t__,TYPE_1__*) ;
 int mach_port_mod_refs (int ,scalar_t__,int ,int) ;
 int mach_release ;
 int mach_task_self () ;

int
heim_sipc_launchd_mach_init(const char *service,
       heim_ipc_callback callback,
       void *user, heim_sipc *ctx)
{
    *ctx = ((void*)0);
    return EINVAL;

}
