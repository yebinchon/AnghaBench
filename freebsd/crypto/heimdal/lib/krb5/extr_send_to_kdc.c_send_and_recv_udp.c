
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
typedef int krb5_socket_t ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;


 int recv_loop (int ,int ,int,int ,TYPE_1__*) ;
 scalar_t__ send (int ,int ,int ,int ) ;

__attribute__((used)) static int
send_and_recv_udp(krb5_socket_t fd,
    time_t tmout,
    const krb5_data *req,
    krb5_data *rep)
{
    if (send (fd, req->data, req->length, 0) < 0)
 return -1;

    return recv_loop(fd, tmout, 1, 0, rep);
}
