
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_option_t ;


 int format_option (char const**,int const*,int *,int ,int *) ;

void
svn_opt_format_option(const char **string,
                      const apr_getopt_option_t *opt,
                      svn_boolean_t doc,
                      apr_pool_t *pool)
{
  format_option(string, opt, ((void*)0), doc, pool);
}
