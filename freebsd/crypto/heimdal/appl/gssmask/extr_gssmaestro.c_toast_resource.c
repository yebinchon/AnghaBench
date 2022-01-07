
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int int32_t ;


 int eToastResource ;
 int put32 (struct client*,int) ;
 int ret32 (struct client*,int) ;

__attribute__((used)) static int
toast_resource(struct client *client,
        int32_t hCred)
{
    int32_t val;
    put32(client, eToastResource);
    put32(client, hCred);
    ret32(client, val);
    return val;
}
