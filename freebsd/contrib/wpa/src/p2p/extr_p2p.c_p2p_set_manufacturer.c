
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int * manufacturer; } ;


 int os_free (int *) ;
 int * os_strdup (char const*) ;

int p2p_set_manufacturer(struct p2p_data *p2p, const char *manufacturer)
{
 os_free(p2p->cfg->manufacturer);
 p2p->cfg->manufacturer = ((void*)0);
 if (manufacturer) {
  p2p->cfg->manufacturer = os_strdup(manufacturer);
  if (p2p->cfg->manufacturer == ((void*)0))
   return -1;
 }

 return 0;
}
