
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int text_conflicts_resolved; int prop_conflicts_resolved; int tree_conflicts_resolved; scalar_t__ skipped_paths; int tree_conflicts; int prop_conflicts; int text_conflicts; } ;
typedef TYPE_1__ svn_cl__conflict_stats_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_hash_count (int ) ;
 int remaining_str (int *,int) ;
 int resolved_str (int *,int) ;
 int svn_cmdline_printf (int *,int ,...) ;

svn_error_t *
svn_cl__print_conflict_stats(svn_cl__conflict_stats_t *conflict_stats,
                             apr_pool_t *scratch_pool)
{
  int n_text = apr_hash_count(conflict_stats->text_conflicts);
  int n_prop = apr_hash_count(conflict_stats->prop_conflicts);
  int n_tree = apr_hash_count(conflict_stats->tree_conflicts);
  int n_text_r = conflict_stats->text_conflicts_resolved;
  int n_prop_r = conflict_stats->prop_conflicts_resolved;
  int n_tree_r = conflict_stats->tree_conflicts_resolved;

  if (n_text > 0 || n_text_r > 0
      || n_prop > 0 || n_prop_r > 0
      || n_tree > 0 || n_tree_r > 0
      || conflict_stats->skipped_paths > 0)
    SVN_ERR(svn_cmdline_printf(scratch_pool,
                               _("Summary of conflicts:\n")));

  if (n_text_r == 0 && n_prop_r == 0 && n_tree_r == 0)
    {
      if (n_text > 0)
        SVN_ERR(svn_cmdline_printf(scratch_pool,
          _("  Text conflicts: %d\n"),
          n_text));
      if (n_prop > 0)
        SVN_ERR(svn_cmdline_printf(scratch_pool,
          _("  Property conflicts: %d\n"),
          n_prop));
      if (n_tree > 0)
        SVN_ERR(svn_cmdline_printf(scratch_pool,
          _("  Tree conflicts: %d\n"),
          n_tree));
    }
  else
    {
      if (n_text > 0 || n_text_r > 0)
        SVN_ERR(svn_cmdline_printf(scratch_pool,
                                   _("  Text conflicts: %s (%s)\n"),
                                   remaining_str(scratch_pool, n_text),
                                   resolved_str(scratch_pool, n_text_r)));
      if (n_prop > 0 || n_prop_r > 0)
        SVN_ERR(svn_cmdline_printf(scratch_pool,
                                   _("  Property conflicts: %s (%s)\n"),
                                   remaining_str(scratch_pool, n_prop),
                                   resolved_str(scratch_pool, n_prop_r)));
      if (n_tree > 0 || n_tree_r > 0)
        SVN_ERR(svn_cmdline_printf(scratch_pool,
                                   _("  Tree conflicts: %s (%s)\n"),
                                   remaining_str(scratch_pool, n_tree),
                                   resolved_str(scratch_pool, n_tree_r)));
    }
  if (conflict_stats->skipped_paths > 0)
    SVN_ERR(svn_cmdline_printf(scratch_pool,
                               _("  Skipped paths: %d\n"),
                               conflict_stats->skipped_paths));

  return SVN_NO_ERROR;
}
