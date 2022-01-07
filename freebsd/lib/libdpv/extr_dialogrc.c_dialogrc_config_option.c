
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct figpar_config {int dummy; } ;


 int dialogrc_config ;
 struct figpar_config* get_config_option (int ,char const*) ;

struct figpar_config *
dialogrc_config_option(const char *directive)
{
 return (get_config_option(dialogrc_config, directive));
}
