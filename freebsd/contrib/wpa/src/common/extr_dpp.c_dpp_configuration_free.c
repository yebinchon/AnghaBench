
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_configuration {int group_id; int passphrase; } ;


 int bin_clear_free (struct dpp_configuration*,int) ;
 int os_free (int ) ;
 int str_clear_free (int ) ;

void dpp_configuration_free(struct dpp_configuration *conf)
{
 if (!conf)
  return;
 str_clear_free(conf->passphrase);
 os_free(conf->group_id);
 bin_clear_free(conf, sizeof(*conf));
}
