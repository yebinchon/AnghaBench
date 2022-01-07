
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int copy_or_move (int *,TYPE_1__*,char const*,char const*,int ,int ,int ,int ,void*,int ,void*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__write_check (int ,int ,int *) ;

svn_error_t *
svn_wc_copy3(svn_wc_context_t *wc_ctx,
             const char *src_abspath,
             const char *dst_abspath,
             svn_boolean_t metadata_only,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             svn_wc_notify_func2_t notify_func,
             void *notify_baton,
             apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_wc__write_check(wc_ctx->db,
                              svn_dirent_dirname(dst_abspath, scratch_pool),
                              scratch_pool));

  return svn_error_trace(copy_or_move(((void*)0), wc_ctx, src_abspath, dst_abspath,
                                      metadata_only, FALSE ,
                                      TRUE ,
                                      cancel_func, cancel_baton,
                                      notify_func, notify_baton,
                                      scratch_pool));
}
