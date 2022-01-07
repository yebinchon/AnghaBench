
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int * model_name; } ;


 int os_free (int *) ;
 int * os_strdup (char const*) ;

int p2p_set_model_name(struct p2p_data *p2p, const char *model_name)
{
 os_free(p2p->cfg->model_name);
 p2p->cfg->model_name = ((void*)0);
 if (model_name) {
  p2p->cfg->model_name = os_strdup(model_name);
  if (p2p->cfg->model_name == ((void*)0))
   return -1;
 }

 return 0;
}
