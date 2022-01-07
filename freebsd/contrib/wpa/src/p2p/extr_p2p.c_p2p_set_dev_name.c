
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int * dev_name; } ;


 int os_free (int *) ;
 int * os_strdup (char const*) ;

int p2p_set_dev_name(struct p2p_data *p2p, const char *dev_name)
{
 os_free(p2p->cfg->dev_name);
 if (dev_name) {
  p2p->cfg->dev_name = os_strdup(dev_name);
  if (p2p->cfg->dev_name == ((void*)0))
   return -1;
 } else
  p2p->cfg->dev_name = ((void*)0);
 return 0;
}
