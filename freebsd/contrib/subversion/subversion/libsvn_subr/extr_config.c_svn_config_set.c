
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int pool; int option_names_case_sensitive; scalar_t__ read_only; } ;
typedef TYPE_1__ svn_config_t ;
struct TYPE_14__ {int options; } ;
typedef TYPE_2__ cfg_section_t ;
struct TYPE_15__ {int hash_key; int state; int value; } ;
typedef TYPE_3__ cfg_option_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int apr_pstrdup (int ,char const*) ;
 TYPE_3__* find_option (TYPE_1__*,char const*,char const*,TYPE_2__**) ;
 int option_state_needs_expanding ;
 int remove_expansions (TYPE_1__*) ;
 TYPE_2__* svn_config_addsection (TYPE_1__*,char const*) ;
 int svn_config_create_option (TYPE_3__**,char const*,char const*,int ,int ) ;
 int svn_hash_sets (int ,int ,TYPE_3__*) ;

void
svn_config_set(svn_config_t *cfg,
               const char *section, const char *option,
               const char *value)
{
  cfg_section_t *sec;
  cfg_option_t *opt;
  if (cfg->read_only)
    return;

  remove_expansions(cfg);

  opt = find_option(cfg, section, option, &sec);
  if (opt != ((void*)0))
    {

      opt->value = apr_pstrdup(cfg->pool, value);
      opt->state = option_state_needs_expanding;
      return;
    }


  svn_config_create_option(&opt, option, value,
                           cfg->option_names_case_sensitive,
                           cfg->pool);

  if (sec == ((void*)0))
    {

      sec = svn_config_addsection(cfg, section);
    }

  svn_hash_sets(sec->options, opt->hash_key, opt);
}
