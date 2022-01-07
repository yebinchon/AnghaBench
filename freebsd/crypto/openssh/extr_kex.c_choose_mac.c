
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshmac {char* name; scalar_t__ enabled; int * key; } ;
struct ssh {int dummy; } ;


 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_NO_MAC_ALG_MATCH ;
 int free (char*) ;
 scalar_t__ mac_setup (struct sshmac*,char*) ;
 char* match_list (char*,char*,int *) ;

__attribute__((used)) static int
choose_mac(struct ssh *ssh, struct sshmac *mac, char *client, char *server)
{
 char *name = match_list(client, server, ((void*)0));

 if (name == ((void*)0))
  return SSH_ERR_NO_MAC_ALG_MATCH;
 if (mac_setup(mac, name) < 0) {
  free(name);
  return SSH_ERR_INTERNAL_ERROR;
 }
 mac->name = name;
 mac->key = ((void*)0);
 mac->enabled = 0;
 return 0;
}
