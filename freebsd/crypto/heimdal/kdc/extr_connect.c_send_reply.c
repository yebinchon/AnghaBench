
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct descr {unsigned long addr_string; int sock_len; int sa; int s; } ;
typedef int l ;
typedef int krb5_kdc_configuration ;
struct TYPE_3__ {int length; unsigned char* data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;


 int kdc_log (int ,int *,int,char*,unsigned long,unsigned long) ;
 scalar_t__ rk_IS_SOCKET_ERROR (int ) ;
 int rk_SOCK_ERRNO ;
 int sendto (int ,unsigned char*,int,int ,int ,int ) ;
 unsigned long strerror (int ) ;

__attribute__((used)) static void
send_reply(krb5_context context,
    krb5_kdc_configuration *config,
    krb5_boolean prependlength,
    struct descr *d,
    krb5_data *reply)
{
    kdc_log(context, config, 5,
     "sending %lu bytes to %s", (unsigned long)reply->length,
     d->addr_string);
    if(prependlength){
 unsigned char l[4];
 l[0] = (reply->length >> 24) & 0xff;
 l[1] = (reply->length >> 16) & 0xff;
 l[2] = (reply->length >> 8) & 0xff;
 l[3] = reply->length & 0xff;
 if(rk_IS_SOCKET_ERROR(sendto(d->s, l, sizeof(l), 0, d->sa, d->sock_len))) {
     kdc_log (context, config,
       0, "sendto(%s): %s", d->addr_string,
       strerror(rk_SOCK_ERRNO));
     return;
 }
    }
    if(rk_IS_SOCKET_ERROR(sendto(d->s, reply->data, reply->length, 0, d->sa, d->sock_len))) {
 kdc_log (context, config, 0, "sendto(%s): %s", d->addr_string,
   strerror(rk_SOCK_ERRNO));
 return;
    }
}
