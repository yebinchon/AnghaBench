
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int section_names_case_sensitive; int tmp_key; int sections; } ;
typedef TYPE_1__ svn_config_t ;
typedef int svn_boolean_t ;


 int * get_hash_value (int ,int ,char const*,int ) ;

svn_boolean_t
svn_config_has_section(svn_config_t *cfg, const char *section)
{
  return ((void*)0) != get_hash_value(cfg->sections, cfg->tmp_key, section,
                                cfg->section_names_case_sensitive);
}
