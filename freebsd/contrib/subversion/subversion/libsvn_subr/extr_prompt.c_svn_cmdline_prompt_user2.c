
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_cmdline_prompt_baton_t ;
typedef int svn_cmdline_prompt_baton2_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * prompt (char const**,char const*,int ,int *,int *) ;

svn_error_t *
svn_cmdline_prompt_user2(const char **result,
                         const char *prompt_str,
                         svn_cmdline_prompt_baton_t *baton,
                         apr_pool_t *pool)
{


  return prompt(result, prompt_str, FALSE ,
                (svn_cmdline_prompt_baton2_t *)baton, pool);
}
