
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int int32_t ;


 int GSMERR_OK ;
 int eGetMoniker ;
 int put32 (struct client*,int ) ;
 int retstring (struct client*,char*) ;

__attribute__((used)) static int32_t
get_moniker(struct client *client,
     char **moniker)
{
    put32(client, eGetMoniker);
    retstring(client, *moniker);
    return GSMERR_OK;
}
