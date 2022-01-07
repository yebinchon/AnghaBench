
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_cache_config_t ;


 int const cache_settings ;

const svn_cache_config_t *
svn_cache_config_get(void)
{
  return &cache_settings;
}
