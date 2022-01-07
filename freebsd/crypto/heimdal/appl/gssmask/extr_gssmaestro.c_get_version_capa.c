
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;
typedef int int32_t ;


 int GSMERR_OK ;
 int eGetVersionAndCapabilities ;
 int put32 (struct client*,int ) ;
 int ret32 (struct client*,int ) ;
 int retstring (struct client*,char*) ;

__attribute__((used)) static int32_t
get_version_capa(struct client *client,
   int32_t *version, int32_t *capa,
   char **version_str)
{
    put32(client, eGetVersionAndCapabilities);
    ret32(client, *version);
    ret32(client, *capa);
    retstring(client, *version_str);
    return GSMERR_OK;
}
