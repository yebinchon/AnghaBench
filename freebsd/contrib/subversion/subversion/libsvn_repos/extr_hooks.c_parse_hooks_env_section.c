
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
struct parse_hooks_env_section_baton {int cfg; int hooks_env; } ;
struct parse_hooks_env_option_baton {char const* section; int hooks_env; } ;
typedef int apr_pool_t ;


 int TRUE ;
 int parse_hooks_env_option ;
 int svn_config_enumerate2 (int ,char const*,int ,struct parse_hooks_env_option_baton*,int *) ;

__attribute__((used)) static svn_boolean_t
parse_hooks_env_section(const char *name, void *baton, apr_pool_t *pool)
{
  struct parse_hooks_env_section_baton *b = baton;
  struct parse_hooks_env_option_baton bo;

  bo.section = name;
  bo.hooks_env = b->hooks_env;

  (void)svn_config_enumerate2(b->cfg, name, parse_hooks_env_option, &bo, pool);

  return TRUE;
}
