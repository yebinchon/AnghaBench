
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_wclock_owns_lock (int *,int ,char const*,int ,int *) ;
 int svn_wc__db_wclocked (int *,int ,char const*,int *) ;

svn_error_t *
svn_wc_locked2(svn_boolean_t *locked_here,
               svn_boolean_t *locked,
               svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               apr_pool_t *scratch_pool)
{
  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  if (locked_here != ((void*)0))
    SVN_ERR(svn_wc__db_wclock_owns_lock(locked_here, wc_ctx->db, local_abspath,
                                        FALSE, scratch_pool));
  if (locked != ((void*)0))
    SVN_ERR(svn_wc__db_wclocked(locked, wc_ctx->db, local_abspath,
                                scratch_pool));

  return SVN_NO_ERROR;
}
