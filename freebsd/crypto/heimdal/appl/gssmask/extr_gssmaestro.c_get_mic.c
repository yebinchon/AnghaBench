
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int krb5_data ;
typedef int int32_t ;


 int eSign ;
 int put32 (struct client*,int ) ;
 int putdata (struct client*,int ) ;
 int ret32 (struct client*,int ) ;
 int retdata (struct client*,int ) ;

__attribute__((used)) static int32_t
get_mic(struct client *client, int32_t hContext,
 krb5_data *in, krb5_data *mic)
{
    int32_t val;
    put32(client, eSign);
    put32(client, hContext);
    put32(client, 0);
    put32(client, 0);
    putdata(client, *in);
    ret32(client, val);
    retdata(client, *mic);
    return val;
}
