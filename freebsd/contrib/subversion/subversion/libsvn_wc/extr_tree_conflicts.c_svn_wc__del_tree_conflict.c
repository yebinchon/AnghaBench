
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_op_mark_resolved (int ,char const*,int ,int ,int ,int *,int *) ;

svn_error_t *
svn_wc__del_tree_conflict(svn_wc_context_t *wc_ctx,
                          const char *victim_abspath,
                          apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(svn_dirent_is_absolute(victim_abspath));

  SVN_ERR(svn_wc__db_op_mark_resolved(wc_ctx->db, victim_abspath,
                                      FALSE, FALSE, TRUE, ((void*)0),
                                      scratch_pool));

   return SVN_NO_ERROR;
 }
