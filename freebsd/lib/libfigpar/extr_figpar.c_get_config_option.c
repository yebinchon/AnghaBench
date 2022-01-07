
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ u_num; } ;
struct figpar_config {TYPE_1__ value; int * action; scalar_t__ type; int * directive; } ;


 struct figpar_config figpar_dummy_config ;
 scalar_t__ strcmp (int *,char const*) ;

struct figpar_config *
get_config_option(struct figpar_config options[], const char *directive)
{
 uint32_t n;


 if (options == ((void*)0) || directive == ((void*)0))
  return (&figpar_dummy_config);


 for (n = 0; options[n].directive != ((void*)0); n++)
  if (strcmp(options[n].directive, directive) == 0)
   return (&(options[n]));


 figpar_dummy_config.directive = ((void*)0);
 figpar_dummy_config.type = 0;
 figpar_dummy_config.action = ((void*)0);
 figpar_dummy_config.value.u_num = 0;

 return (&figpar_dummy_config);
}
