
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int krb5_data ;
typedef int int32_t ;


 int eVerify ;
 int put32 (struct client*,int ) ;
 int putdata (struct client*,int ) ;
 int ret32 (struct client*,int ) ;

__attribute__((used)) static int32_t
verify_mic(struct client *client, int32_t hContext,
    krb5_data *in, krb5_data *mic)
{
    int32_t val;
    put32(client, eVerify);
    put32(client, hContext);
    put32(client, 0);
    put32(client, 0);
    putdata(client, *in);
    putdata(client, *mic);
    ret32(client, val);
    return val;
}
