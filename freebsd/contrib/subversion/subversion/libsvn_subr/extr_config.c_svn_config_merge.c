
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int pool; int option_names_case_sensitive; int section_names_case_sensitive; } ;
typedef TYPE_1__ svn_config_t ;
typedef int svn_boolean_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int for_each_option (TYPE_1__*,TYPE_1__*,int ,int ) ;
 int merge_callback ;
 int svn_config_read3 (TYPE_1__**,char const*,int ,int ,int ,int ) ;

svn_error_t *
svn_config_merge(svn_config_t *cfg, const char *file,
                 svn_boolean_t must_exist)
{




  svn_config_t *merge_cfg;
  SVN_ERR(svn_config_read3(&merge_cfg, file, must_exist,
                           cfg->section_names_case_sensitive,
                           cfg->option_names_case_sensitive,
                           cfg->pool));


  for_each_option(merge_cfg, cfg, merge_cfg->pool, merge_callback);
  return SVN_NO_ERROR;
}
