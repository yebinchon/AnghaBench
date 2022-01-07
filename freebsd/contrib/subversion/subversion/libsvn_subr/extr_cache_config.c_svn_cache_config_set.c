
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_cache_config_t ;


 int cache_settings ;

void
svn_cache_config_set(const svn_cache_config_t *settings)
{
  cache_settings = *settings;
}
