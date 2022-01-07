
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global {int dummy; } ;
struct dpp_configurator {int dummy; } ;


 struct dpp_configurator* dpp_configurator_get_id (struct dpp_global*,unsigned int) ;
 int dpp_configurator_get_key (struct dpp_configurator*,char*,size_t) ;

int dpp_configurator_get_key_id(struct dpp_global *dpp, unsigned int id,
    char *buf, size_t buflen)
{
 struct dpp_configurator *conf;

 conf = dpp_configurator_get_id(dpp, id);
 if (!conf)
  return -1;

 return dpp_configurator_get_key(conf, buf, buflen);
}
