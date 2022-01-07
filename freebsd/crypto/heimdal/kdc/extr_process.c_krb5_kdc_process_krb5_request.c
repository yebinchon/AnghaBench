
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int krb5_kdc_configuration ;
typedef int krb5_error_code ;
struct TYPE_6__ {unsigned char* data; size_t length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
struct TYPE_7__ {int (* process ) (int ,int *,TYPE_1__*,TYPE_1__*,char const*,struct sockaddr*,int,int*) ;int flags; } ;


 int KS_KRB5 ;
 TYPE_4__* services ;
 int stub1 (int ,int *,TYPE_1__*,TYPE_1__*,char const*,struct sockaddr*,int,int*) ;

int
krb5_kdc_process_krb5_request(krb5_context context,
         krb5_kdc_configuration *config,
         unsigned char *buf,
         size_t len,
         krb5_data *reply,
         const char *from,
         struct sockaddr *addr,
         int datagram_reply)
{
    krb5_error_code ret;
    unsigned int i;
    krb5_data req_buffer;
    int claim = 0;

    req_buffer.data = buf;
    req_buffer.length = len;

    for (i = 0; services[i].process != ((void*)0); i++) {
 if ((services[i].flags & KS_KRB5) == 0)
     continue;
 ret = (*services[i].process)(context, config, &req_buffer,
         reply, from, addr, datagram_reply,
         &claim);
 if (claim)
     return ret;
    }

    return -1;
}
