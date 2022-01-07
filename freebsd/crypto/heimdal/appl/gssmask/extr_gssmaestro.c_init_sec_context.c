
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int krb5_data ;
typedef int int32_t ;


 int eInitContext ;
 int krb5_data_zero (int *) ;
 int put32 (struct client*,int) ;
 int putdata (struct client*,int const) ;
 int putstring (struct client*,char const*) ;
 int ret32 (struct client*,int) ;
 int retdata (struct client*,int ) ;

__attribute__((used)) static int
init_sec_context(struct client *client,
   int32_t *hContext, int32_t *hCred,
   int32_t flags,
   const char *targetname,
   const krb5_data *itoken, krb5_data *otoken)
{
    int32_t val;
    krb5_data_zero(otoken);
    put32(client, eInitContext);
    put32(client, *hContext);
    put32(client, *hCred);
    put32(client, flags);
    putstring(client, targetname);
    putdata(client, *itoken);
    ret32(client, *hContext);
    ret32(client, val);
    retdata(client, *otoken);
    return val;
}
