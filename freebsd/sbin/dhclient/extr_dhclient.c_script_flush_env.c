
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_state {scalar_t__ scriptEnvsize; int ** scriptEnv; } ;


 int free (int *) ;

void
script_flush_env(struct client_state *client)
{
 int i;

 for (i = 0; client->scriptEnv[i]; i++) {
  free(client->scriptEnv[i]);
  client->scriptEnv[i] = ((void*)0);
 }
 client->scriptEnvsize = 0;
}
