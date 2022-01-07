
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshmac {int dummy; } ;
struct macalg {int * name; } ;


 int SSH_ERR_INVALID_ARGUMENT ;
 int mac_setup_by_alg (struct sshmac*,struct macalg const*) ;
 struct macalg* macs ;
 scalar_t__ strcmp (char*,int *) ;

int
mac_setup(struct sshmac *mac, char *name)
{
 const struct macalg *m;

 for (m = macs; m->name != ((void*)0); m++) {
  if (strcmp(name, m->name) != 0)
   continue;
  if (mac != ((void*)0))
   return mac_setup_by_alg(mac, m);
  return 0;
 }
 return SSH_ERR_INVALID_ARGUMENT;
}
