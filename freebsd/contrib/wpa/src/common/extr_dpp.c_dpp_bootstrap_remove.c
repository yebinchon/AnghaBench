
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global {int dummy; } ;


 unsigned int atoi (char const*) ;
 int dpp_bootstrap_del (struct dpp_global*,unsigned int) ;
 scalar_t__ os_strcmp (char const*,char*) ;

int dpp_bootstrap_remove(struct dpp_global *dpp, const char *id)
{
 unsigned int id_val;

 if (os_strcmp(id, "*") == 0) {
  id_val = 0;
 } else {
  id_val = atoi(id);
  if (id_val == 0)
   return -1;
 }

 return dpp_bootstrap_del(dpp, id_val);
}
