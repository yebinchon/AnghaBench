
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int log_fd; } ;
struct TYPE_4__ {TYPE_2__ log_context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_ret_t ;
typedef TYPE_2__ kadm5_log_context ;


 int LOCK_UN ;
 int close (int) ;
 int flock (int,int ) ;

kadm5_ret_t
kadm5_log_end (kadm5_server_context *context)
{
    kadm5_log_context *log_context = &context->log_context;
    int fd = log_context->log_fd;

    flock (fd, LOCK_UN);
    close(fd);
    log_context->log_fd = -1;
    return 0;
}
