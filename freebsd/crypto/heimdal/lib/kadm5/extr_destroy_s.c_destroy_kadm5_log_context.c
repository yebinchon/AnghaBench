
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * socket_info; int socket_fd; int log_file; } ;
typedef TYPE_1__ kadm5_log_context ;


 int free (int ) ;
 int freeaddrinfo (int *) ;
 int rk_closesocket (int ) ;

__attribute__((used)) static void
destroy_kadm5_log_context (kadm5_log_context *c)
{
    free (c->log_file);
    rk_closesocket (c->socket_fd);






}
