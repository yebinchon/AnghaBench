
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stdout ;
 int svn_cmdline_fputs (char const*,int ,int *) ;
 int svn_cmdline_printf (int *,char*,char const*,char const*) ;

__attribute__((used)) static svn_error_t *
print_info_item_string(const char *text, const char *target_path,
                       apr_pool_t *pool)
{
  if (text)
    {
      if (target_path)
        SVN_ERR(svn_cmdline_printf(pool, "%-10s %s", text, target_path));
      else
        SVN_ERR(svn_cmdline_fputs(text, stdout, pool));
    }
  else if (target_path)
    SVN_ERR(svn_cmdline_printf(pool, "%-10s %s", "", target_path));

  return SVN_NO_ERROR;
}
