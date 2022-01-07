
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct client_lease {TYPE_1__* options; struct client_lease* filename; struct client_lease* server_name; } ;
struct TYPE_2__ {struct client_lease* data; scalar_t__ len; } ;


 int free (struct client_lease*) ;

void
free_client_lease(struct client_lease *lease)
{
 int i;

 if (lease->server_name)
  free(lease->server_name);
 if (lease->filename)
  free(lease->filename);
 for (i = 0; i < 256; i++) {
  if (lease->options[i].len)
   free(lease->options[i].data);
 }
 free(lease);
}
