
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int log_fd; } ;
struct TYPE_5__ {TYPE_1__ log_context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef int kadm5_ret_t ;


 int kadm5_log_get_version_fd (int ,int *) ;

kadm5_ret_t
kadm5_log_get_version (kadm5_server_context *context, uint32_t *ver)
{
    return kadm5_log_get_version_fd (context->log_context.log_fd, ver);
}
