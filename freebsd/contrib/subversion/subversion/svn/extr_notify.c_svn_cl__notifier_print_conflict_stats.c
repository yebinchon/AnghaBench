
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct notify_baton {int conflict_stats; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cl__print_conflict_stats (int ,int *) ;

svn_error_t *
svn_cl__notifier_print_conflict_stats(void *baton, apr_pool_t *scratch_pool)
{
  struct notify_baton *nb = baton;

  SVN_ERR(svn_cl__print_conflict_stats(nb->conflict_stats, scratch_pool));
  return SVN_NO_ERROR;
}
