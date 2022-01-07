
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int acl_flags; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_ret_t ;



kadm5_ret_t
kadm5_s_get_privs(void *server_handle, uint32_t *privs)
{
    kadm5_server_context *context = server_handle;
    *privs = context->acl_flags;
    return 0;
}
