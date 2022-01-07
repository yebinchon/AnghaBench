
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int log_fd; scalar_t__ version; int log_file; } ;
struct TYPE_4__ {TYPE_2__ log_context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_ret_t ;
typedef TYPE_2__ kadm5_log_context ;


 int LOCK_EX ;
 int LOCK_UN ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int close (int) ;
 int errno ;
 scalar_t__ flock (int,int ) ;
 int open (int ,int,int) ;

kadm5_ret_t
kadm5_log_reinit (kadm5_server_context *context)
{
    int fd;
    kadm5_log_context *log_context = &context->log_context;

    if (log_context->log_fd != -1) {
 flock (log_context->log_fd, LOCK_UN);
 close (log_context->log_fd);
 log_context->log_fd = -1;
    }
    fd = open (log_context->log_file, O_RDWR | O_CREAT | O_TRUNC, 0600);
    if (fd < 0)
 return errno;
    if (flock (fd, LOCK_EX) < 0) {
 close (fd);
 return errno;
    }

    log_context->version = 0;
    log_context->log_fd = fd;
    return 0;
}
