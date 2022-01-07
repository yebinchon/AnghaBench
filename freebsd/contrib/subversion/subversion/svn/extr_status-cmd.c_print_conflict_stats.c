
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct status_baton {scalar_t__ text_conflicts; scalar_t__ prop_conflicts; scalar_t__ tree_conflicts; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 int svn_cmdline_printf (int *,char*,char*) ;

__attribute__((used)) static svn_error_t *
print_conflict_stats(struct status_baton *sb, apr_pool_t *pool)
{
  if (sb->text_conflicts > 0 || sb->prop_conflicts > 0 ||
      sb->tree_conflicts > 0)
      SVN_ERR(svn_cmdline_printf(pool, "%s", _("Summary of conflicts:\n")));

  if (sb->text_conflicts > 0)
    SVN_ERR(svn_cmdline_printf
      (pool, _("  Text conflicts: %u\n"), sb->text_conflicts));

  if (sb->prop_conflicts > 0)
    SVN_ERR(svn_cmdline_printf
      (pool, _("  Property conflicts: %u\n"), sb->prop_conflicts));

  if (sb->tree_conflicts > 0)
    SVN_ERR(svn_cmdline_printf
      (pool, _("  Tree conflicts: %u\n"), sb->tree_conflicts));

  return SVN_NO_ERROR;
}
