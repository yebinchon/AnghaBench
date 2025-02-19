
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
typedef int len ;
typedef int krb5_socket_t ;
struct TYPE_6__ {int length; unsigned char* data; } ;
typedef TYPE_1__ krb5_data ;


 int _krb5_get_int (unsigned char*,unsigned long*,int) ;
 int _krb5_put_int (unsigned char*,int,int) ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ net_write (int ,unsigned char*,int) ;
 scalar_t__ recv_loop (int ,int ,int ,unsigned long,TYPE_1__*) ;

__attribute__((used)) static int
send_and_recv_tcp(krb5_socket_t fd,
    time_t tmout,
    const krb5_data *req,
    krb5_data *rep)
{
    unsigned char len[4];
    unsigned long rep_len;
    krb5_data len_data;

    _krb5_put_int(len, req->length, 4);
    if(net_write (fd, len, sizeof(len)) < 0)
 return -1;
    if(net_write (fd, req->data, req->length) < 0)
 return -1;
    if (recv_loop (fd, tmout, 0, 4, &len_data) < 0)
 return -1;
    if (len_data.length != 4) {
 krb5_data_free (&len_data);
 return -1;
    }
    _krb5_get_int(len_data.data, &rep_len, 4);
    krb5_data_free (&len_data);
    if (recv_loop (fd, tmout, 0, rep_len, rep) < 0)
 return -1;
    if(rep->length != rep_len) {
 krb5_data_free (rep);
 return -1;
    }
    return 0;
}
