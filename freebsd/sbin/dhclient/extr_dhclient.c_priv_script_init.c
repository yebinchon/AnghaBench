
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct interface_info {char const* name; TYPE_1__* client; } ;
struct TYPE_2__ {int scriptEnvsize; int ** scriptEnv; } ;


 int CLIENT_PATH ;
 int error (char*) ;
 struct interface_info* ifi ;
 int ** malloc (int) ;
 int script_set_env (TYPE_1__*,char*,char*,char const*) ;
 int * strdup (int ) ;

void
priv_script_init(const char *reason, char *medium)
{
 struct interface_info *ip = ifi;

 if (ip) {
  ip->client->scriptEnvsize = 100;
  if (ip->client->scriptEnv == ((void*)0))
   ip->client->scriptEnv =
       malloc(ip->client->scriptEnvsize * sizeof(char *));
  if (ip->client->scriptEnv == ((void*)0))
   error("script_init: no memory for environment");

  ip->client->scriptEnv[0] = strdup(CLIENT_PATH);
  if (ip->client->scriptEnv[0] == ((void*)0))
   error("script_init: no memory for environment");

  ip->client->scriptEnv[1] = ((void*)0);

  script_set_env(ip->client, "", "interface", ip->name);

  if (medium)
   script_set_env(ip->client, "", "medium", medium);

  script_set_env(ip->client, "", "reason", reason);
 }
}
