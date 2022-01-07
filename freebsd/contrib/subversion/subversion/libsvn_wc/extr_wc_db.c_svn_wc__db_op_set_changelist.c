
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
struct set_changelist_baton_t {char const* new_changelist; int depth; int const* changelist_filter; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int STMT_FINALIZE_CHANGELIST ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int do_changelist_notify ;
 int flush_entries (int *,char const*,int ,int *) ;
 int set_changelist_txn ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;
 int with_finalization (int *,char const*,int ,struct set_changelist_baton_t*,int ,int *,int ,void*,int ,void*,int ,int *) ;

svn_error_t *
svn_wc__db_op_set_changelist(svn_wc__db_t *db,
                             const char *local_abspath,
                             const char *new_changelist,
                             const apr_array_header_t *changelist_filter,
                             svn_depth_t depth,
                             svn_wc_notify_func2_t notify_func,
                             void *notify_baton,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  struct set_changelist_baton_t scb;

  scb.new_changelist = new_changelist;
  scb.changelist_filter = changelist_filter;
  scb.depth = depth;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);



  SVN_ERR(flush_entries(wcroot, local_abspath, depth, scratch_pool));



  return svn_error_trace(with_finalization(wcroot, local_relpath,
                                           set_changelist_txn, &scb,
                                           do_changelist_notify, ((void*)0),
                                           cancel_func, cancel_baton,
                                           notify_func, notify_baton,
                                           STMT_FINALIZE_CHANGELIST,
                                           scratch_pool));
}
