
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int krb5_data ;
typedef int int32_t ;


 int eDecrypt ;
 int put32 (struct client*,int) ;
 int putdata (struct client*,int ) ;
 int ret32 (struct client*,int) ;
 int retdata (struct client*,int ) ;

__attribute__((used)) static int32_t
decrypt_token(struct client *client, int32_t hContext, int flags,
      krb5_data *in, krb5_data *out)
{
    int32_t val;
    put32(client, eDecrypt);
    put32(client, hContext);
    put32(client, flags);
    put32(client, 0);
    putdata(client, *in);
    ret32(client, val);
    retdata(client, *out);
    return val;
}
