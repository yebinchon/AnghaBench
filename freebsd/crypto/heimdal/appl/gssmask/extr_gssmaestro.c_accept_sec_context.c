
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int krb5_data ;
typedef int int32_t ;


 int eAcceptContext ;
 int krb5_data_zero (int *) ;
 int put32 (struct client*,int) ;
 int putdata (struct client*,int const) ;
 int ret32 (struct client*,int) ;
 int retdata (struct client*,int ) ;

__attribute__((used)) static int
accept_sec_context(struct client *client,
     int32_t *hContext,
     int32_t flags,
     const krb5_data *itoken,
     krb5_data *otoken,
     int32_t *hDelegCred)
{
    int32_t val;
    krb5_data_zero(otoken);
    put32(client, eAcceptContext);
    put32(client, *hContext);
    put32(client, flags);
    putdata(client, *itoken);
    ret32(client, *hContext);
    ret32(client, val);
    retdata(client, *otoken);
    ret32(client, *hDelegCred);
    return val;
}
