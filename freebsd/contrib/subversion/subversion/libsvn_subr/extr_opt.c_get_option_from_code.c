
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_opt_subcommand_desc2_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int optch; char* name; } ;
typedef TYPE_1__ apr_getopt_option_t ;


 TYPE_1__* svn_opt_get_option_from_code2 (int,TYPE_1__ const*,int const*,int *) ;

__attribute__((used)) static const apr_getopt_option_t *
get_option_from_code(const char **long_alias,
                     int code,
                     const apr_getopt_option_t *option_table,
                     const svn_opt_subcommand_desc2_t *command,
                     apr_pool_t *pool)
{
  const apr_getopt_option_t *i;
  const apr_getopt_option_t *opt
    = svn_opt_get_option_from_code2(code, option_table, command, pool);


  *long_alias = ((void*)0);
  for (i = option_table; i->optch; i++)
    {
      if (i->optch == code && i->name != opt->name)
        {
          *long_alias = i->name;
          break;
        }
    }

  return opt;
}
