
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshcomp {char* name; int type; } ;


 int COMP_DELAYED ;
 int COMP_NONE ;
 int COMP_ZLIB ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_NO_COMPRESS_ALG_MATCH ;
 int free (char*) ;
 char* match_list (char*,char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
choose_comp(struct sshcomp *comp, char *client, char *server)
{
 char *name = match_list(client, server, ((void*)0));

 if (name == ((void*)0))
  return SSH_ERR_NO_COMPRESS_ALG_MATCH;
 if (strcmp(name, "zlib@openssh.com") == 0) {
  comp->type = COMP_DELAYED;
 } else if (strcmp(name, "zlib") == 0) {
  comp->type = COMP_ZLIB;
 } else if (strcmp(name, "none") == 0) {
  comp->type = COMP_NONE;
 } else {
  free(name);
  return SSH_ERR_INTERNAL_ERROR;
 }
 comp->name = name;
 return 0;
}
