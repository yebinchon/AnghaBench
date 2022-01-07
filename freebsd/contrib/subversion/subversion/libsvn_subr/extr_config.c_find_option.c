
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int option_names_case_sensitive; int tmp_key; int section_names_case_sensitive; int sections; } ;
typedef TYPE_1__ svn_config_t ;
struct TYPE_6__ {int options; } ;
typedef TYPE_2__ cfg_section_t ;
typedef int cfg_option_t ;


 char* SVN_CONFIG__DEFAULT_SECTION ;
 scalar_t__ apr_strnatcasecmp (char const*,char*) ;
 void* get_hash_value (int ,int ,char const*,int ) ;

__attribute__((used)) static cfg_option_t *
find_option(svn_config_t *cfg, const char *section, const char *option,
            cfg_section_t **sectionp)
{
  void *sec_ptr = get_hash_value(cfg->sections, cfg->tmp_key, section,
                                 cfg->section_names_case_sensitive);
  if (sectionp != ((void*)0))
    *sectionp = sec_ptr;

  if (sec_ptr != ((void*)0) && option != ((void*)0))
    {
      cfg_section_t *sec = sec_ptr;
      cfg_option_t *opt = get_hash_value(sec->options, cfg->tmp_key, option,
                                         cfg->option_names_case_sensitive);

      if (opt == ((void*)0)
          && apr_strnatcasecmp(section, SVN_CONFIG__DEFAULT_SECTION) != 0)


        opt = find_option(cfg, SVN_CONFIG__DEFAULT_SECTION, option, &sec);
      return opt;
    }

  return ((void*)0);
}
