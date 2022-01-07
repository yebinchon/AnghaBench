
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rev_id; int fs; scalar_t__ txn_name; int txn; int diff_cmd; int properties_only; int ignore_properties; int diff_options; int is_revision; int copy_info; int full_paths; int diff_copy_from; int no_diff_added; int no_diff_deleted; int limit; int show_ids; int repos; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef int svn_error_t ;
struct svnlook_opt_state {scalar_t__ rev; char* extensions; int diff_cmd; int properties_only; int ignore_properties; int * txn; int copy_info; int full_paths; int diff_copy_from; int no_diff_added; int no_diff_deleted; int limit; int show_ids; int repos_path; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 scalar_t__ apr_pstrdup (int *,int *) ;
 int svn_cstring_split (char*,char*,int ,int *) ;
 int svn_fs_open_txn (int *,int ,scalar_t__,int *) ;
 int svn_fs_set_warning_func (int ,int ,int *) ;
 int svn_fs_youngest_rev (scalar_t__*,int ,int *) ;
 int svn_repos_fs (int ) ;
 int svn_repos_open3 (int *,int ,int *,int *,int *) ;
 int warning_func ;

__attribute__((used)) static svn_error_t *
get_ctxt_baton(svnlook_ctxt_t **baton_p,
               struct svnlook_opt_state *opt_state,
               apr_pool_t *pool)
{
  svnlook_ctxt_t *baton = apr_pcalloc(pool, sizeof(*baton));

  SVN_ERR(svn_repos_open3(&(baton->repos), opt_state->repos_path, ((void*)0),
                          pool, pool));
  baton->fs = svn_repos_fs(baton->repos);
  svn_fs_set_warning_func(baton->fs, warning_func, ((void*)0));
  baton->show_ids = opt_state->show_ids;
  baton->limit = opt_state->limit;
  baton->no_diff_deleted = opt_state->no_diff_deleted;
  baton->no_diff_added = opt_state->no_diff_added;
  baton->diff_copy_from = opt_state->diff_copy_from;
  baton->full_paths = opt_state->full_paths;
  baton->copy_info = opt_state->copy_info;
  baton->is_revision = opt_state->txn == ((void*)0);
  baton->rev_id = opt_state->rev;
  baton->txn_name = apr_pstrdup(pool, opt_state->txn);
  baton->diff_options = svn_cstring_split(opt_state->extensions
                                          ? opt_state->extensions : "",
                                          " \t\n\r", TRUE, pool);
  baton->ignore_properties = opt_state->ignore_properties;
  baton->properties_only = opt_state->properties_only;
  baton->diff_cmd = opt_state->diff_cmd;

  if (baton->txn_name)
    SVN_ERR(svn_fs_open_txn(&(baton->txn), baton->fs,
                            baton->txn_name, pool));
  else if (baton->rev_id == SVN_INVALID_REVNUM)
    SVN_ERR(svn_fs_youngest_rev(&(baton->rev_id), baton->fs, pool));

  *baton_p = baton;
  return SVN_NO_ERROR;
}
