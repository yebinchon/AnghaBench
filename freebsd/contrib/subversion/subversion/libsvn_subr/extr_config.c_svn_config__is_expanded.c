
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_config_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ value; } ;
typedef TYPE_1__ cfg_option_t ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* find_option (int *,char const*,char const*,int *) ;
 scalar_t__ option_state_cyclic ;
 scalar_t__ option_state_expanded ;
 scalar_t__ strchr (scalar_t__,char) ;

svn_boolean_t
svn_config__is_expanded(svn_config_t *cfg,
                        const char *section,
                        const char *option)
{
  cfg_option_t *opt;

  if (cfg == ((void*)0))
    return FALSE;


  opt = find_option(cfg, section, option, ((void*)0));
  if (opt == ((void*)0))
    return FALSE;


  if ( opt->state == option_state_expanded
      || opt->state == option_state_cyclic)
    return TRUE;


  if (opt->value && strchr(opt->value, '%'))
    return FALSE;


  return TRUE;
}
