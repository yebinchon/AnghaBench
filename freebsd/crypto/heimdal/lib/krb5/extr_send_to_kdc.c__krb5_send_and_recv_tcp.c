
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int krb5_socket_t ;
typedef int krb5_data ;


 int send_and_recv_tcp (int ,int ,int const*,int *) ;

int
_krb5_send_and_recv_tcp(krb5_socket_t fd,
   time_t tmout,
   const krb5_data *req,
   krb5_data *rep)
{
    return send_and_recv_tcp(fd, tmout, req, rep);
}
