
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int svn_cmdline_prompt_user2 (char const**,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_cmdline_prompt_user(const char **result,
                        const char *prompt_str,
                        apr_pool_t *pool)
{
  return svn_error_trace(svn_cmdline_prompt_user2(result, prompt_str, ((void*)0),
                                                  pool));
}
