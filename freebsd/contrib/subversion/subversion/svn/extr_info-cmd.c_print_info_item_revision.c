
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (char*) ;
 int * SVN_NO_ERROR ;
 int svn_cmdline_printf (int *,char*,char*,...) ;

__attribute__((used)) static svn_error_t *
print_info_item_revision(svn_revnum_t rev, const char *target_path,
                         apr_pool_t *pool)
{
  if (SVN_IS_VALID_REVNUM(rev))
    {
      if (target_path)
        SVN_ERR(svn_cmdline_printf(pool, "%-10ld %s", rev, target_path));
      else
        SVN_ERR(svn_cmdline_printf(pool, "%ld", rev));
    }
  else if (target_path)
    SVN_ERR(svn_cmdline_printf(pool, "%-10s %s", "", target_path));

  return SVN_NO_ERROR;
}
