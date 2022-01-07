
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;


 int GSMERR_OK ;
 int eGetTargetName ;
 int put32 (struct client*,int ) ;
 int retstring (struct client*,char*) ;

__attribute__((used)) static int
get_targetname(struct client *client,
        char **target)
{
    put32(client, eGetTargetName);
    retstring(client, *target);
    return GSMERR_OK;
}
