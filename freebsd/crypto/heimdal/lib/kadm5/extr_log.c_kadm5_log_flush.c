
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int krb5_storage ;
struct TYPE_8__ {size_t length; int data; } ;
typedef TYPE_2__ krb5_data ;
typedef int kadm5_ret_t ;
struct TYPE_9__ {TYPE_1__* socket_info; int version; int socket_fd; int socket_name; int log_fd; } ;
typedef TYPE_3__ kadm5_log_context ;
struct TYPE_7__ {int ai_addrlen; struct sockaddr* ai_addr; } ;


 int errno ;
 scalar_t__ fsync (int ) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_storage_to_data (int *,TYPE_2__*) ;
 int sendto (int ,void*,int,int ,struct sockaddr*,int) ;
 scalar_t__ write (int ,int ,size_t) ;

__attribute__((used)) static kadm5_ret_t
kadm5_log_flush (kadm5_log_context *log_context,
   krb5_storage *sp)
{
    krb5_data data;
    size_t len;
    ssize_t ret;

    krb5_storage_to_data(sp, &data);
    len = data.length;
    ret = write (log_context->log_fd, data.data, len);
    if (ret < 0 || (size_t)ret != len) {
 krb5_data_free(&data);
 return errno;
    }
    if (fsync (log_context->log_fd) < 0) {
 krb5_data_free(&data);
 return errno;
    }





    sendto (log_context->socket_fd,
     (void *)&log_context->version,
     sizeof(log_context->version),
     0,
     (struct sockaddr *)&log_context->socket_name,
     sizeof(log_context->socket_name));
    krb5_data_free(&data);
    return 0;
}
