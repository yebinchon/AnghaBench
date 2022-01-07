
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
struct TYPE_29__ {TYPE_3__* (* set_path ) (void*,char const*,int ,scalar_t__,int,int *,int *) ;TYPE_3__* (* link_path ) (void*,char const*,int ,int ,scalar_t__,int,int *,int *) ;TYPE_3__* (* delete_path ) (void*,char const*,int *) ;} ;
typedef TYPE_2__ svn_ra_reporter3_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_30__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_checksum_t ;
typedef TYPE_3__* (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
struct svn_wc__db_base_info_t {scalar_t__ status; char* repos_relpath; scalar_t__ depth; scalar_t__ kind; int revnum; TYPE_1__* lock; scalar_t__ update_root; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
struct TYPE_28__ {int * token; } ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 scalar_t__ SVN_DEPTH_IS_RECURSIVE (scalar_t__) ;
 int SVN_ERR (TYPE_3__*) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 TYPE_3__* SVN_NO_ERROR ;
 scalar_t__ SVN__APR_STATUS_IS_ENOTDIR (int ) ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 struct svn_wc__db_base_info_t* apr_hash_this_val (int *) ;
 TYPE_3__* restore_node (int *,char const*,scalar_t__,int,int,TYPE_3__* (*) (void*),void*,int ,void*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_3__* stub1 (void*,char const*,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub10 (void*,char const*,int ,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub11 (void*,char const*,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub2 (void*,char const*,int *) ;
 TYPE_3__* stub3 (void*,char const*,int *) ;
 TYPE_3__* stub4 (void*,char const*,int ,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub5 (void*,char const*,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub6 (void*,char const*,int ,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub7 (void*,char const*,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub8 (void*,char const*,int ,int ,scalar_t__,int,int *,int *) ;
 TYPE_3__* stub9 (void*,char const*,int ,scalar_t__,int,int *,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_exclude ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 int * svn_hash_gets (int *,char const*) ;
 TYPE_3__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 TYPE_3__* svn_io_get_dirents3 (int **,char const*,int,int *,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_symlink ;
 int svn_path_url_add_component2 (char const*,char*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 void* svn_relpath_join (char const*,char const*,int *) ;
 char* svn_relpath_skip_ancestor (char const*,char*) ;
 TYPE_3__* svn_wc__db_base_get_children_info (int **,int *,char const*,int *,int *) ;
 TYPE_3__* svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
report_revisions_and_depths(svn_wc__db_t *db,
                            const char *dir_abspath,
                            const char *report_relpath,
                            svn_revnum_t dir_rev,
                            const char *dir_repos_relpath,
                            const char *dir_repos_root,
                            svn_depth_t dir_depth,
                            const svn_ra_reporter3_t *reporter,
                            void *report_baton,
                            svn_boolean_t restore_files,
                            svn_depth_t depth,
                            svn_boolean_t honor_depth_exclude,
                            svn_boolean_t depth_compatibility_trick,
                            svn_boolean_t report_everything,
                            svn_boolean_t use_commit_times,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            svn_wc_notify_func2_t notify_func,
                            void *notify_baton,
                            apr_pool_t *scratch_pool)
{
  apr_hash_t *base_children;
  apr_hash_t *dirents;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;
  svn_error_t *err;





  SVN_ERR(svn_wc__db_base_get_children_info(&base_children, db, dir_abspath,
                                            scratch_pool, iterpool));

  if (restore_files)
    {
      err = svn_io_get_dirents3(&dirents, dir_abspath, TRUE,
                                scratch_pool, scratch_pool);

      if (err && (APR_STATUS_IS_ENOENT(err->apr_err)
                  || SVN__APR_STATUS_IS_ENOTDIR(err->apr_err)))
        {
          svn_error_clear(err);



          restore_files = FALSE;
          dirents = ((void*)0);
        }
      else
        SVN_ERR(err);
    }
  else
    dirents = ((void*)0);




  for (hi = apr_hash_first(scratch_pool, base_children);
       hi != ((void*)0);
       hi = apr_hash_next(hi))
    {
      const char *child = apr_hash_this_key(hi);
      const char *this_report_relpath;
      const char *this_abspath;
      svn_boolean_t this_switched = FALSE;
      struct svn_wc__db_base_info_t *ths = apr_hash_this_val(hi);

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));



      svn_pool_clear(iterpool);


      this_report_relpath = svn_relpath_join(report_relpath, child, iterpool);
      this_abspath = svn_dirent_join(dir_abspath, child, iterpool);


      if (ths->update_root)
        {
                                                                ;
          continue;
        }


      if (ths->status == svn_wc__db_status_excluded)
        {
          if (honor_depth_exclude)
            {
              SVN_ERR(reporter->set_path(report_baton,
                                         this_report_relpath,
                                         dir_rev,
                                         svn_depth_exclude,
                                         FALSE,
                                         ((void*)0),
                                         iterpool));
            }
          else
            {


              if (! report_everything)
                SVN_ERR(reporter->delete_path(report_baton,
                                              this_report_relpath, iterpool));
            }
          continue;
        }


      if (ths->status == svn_wc__db_status_server_excluded
          || ths->status == svn_wc__db_status_not_present)
        {
          if (! report_everything)
            SVN_ERR(reporter->delete_path(report_baton, this_report_relpath,
                                          iterpool));
          continue;
        }


      if (restore_files
          && svn_hash_gets(dirents, child) == ((void*)0))
        {
          svn_wc__db_status_t wrk_status;
          svn_node_kind_t wrk_kind;
          const svn_checksum_t *checksum;
          svn_boolean_t conflicted;

          SVN_ERR(svn_wc__db_read_info(&wrk_status, &wrk_kind, ((void*)0), ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       &checksum, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), &conflicted,
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       db, this_abspath, iterpool, iterpool));

          if ((wrk_status == svn_wc__db_status_normal
               || wrk_status == svn_wc__db_status_added
               || wrk_status == svn_wc__db_status_incomplete)
              && (wrk_kind == svn_node_dir || checksum))
            {
              svn_node_kind_t dirent_kind;





              SVN_ERR(svn_io_check_path(this_abspath, &dirent_kind, iterpool));

              if (dirent_kind == svn_node_none)
                {
                  SVN_ERR(restore_node(db, this_abspath, wrk_kind,
                                       conflicted, use_commit_times,
                                       cancel_func, cancel_baton,
                                       notify_func, notify_baton, iterpool));
                }
            }
        }


      if (!ths->repos_relpath)
        {
          ths->repos_relpath = svn_relpath_join(dir_repos_relpath, child,
                                                iterpool);
        }
      else
        {
          const char *childname
            = svn_relpath_skip_ancestor(dir_repos_relpath, ths->repos_relpath);

          if (childname == ((void*)0) || strcmp(childname, child) != 0)
            {
              this_switched = TRUE;
            }
        }


      if (ths->depth == svn_depth_unknown)
        ths->depth = svn_depth_infinity;


      if (ths->kind == svn_node_file
          || ths->kind == svn_node_symlink)
        {
          if (report_everything)
            {

              if (this_switched)
                SVN_ERR(reporter->link_path(report_baton,
                                            this_report_relpath,
                                            svn_path_url_add_component2(
                                                dir_repos_root,
                                                ths->repos_relpath, iterpool),
                                            ths->revnum,
                                            ths->depth,
                                            FALSE,
                                            ths->lock ? ths->lock->token : ((void*)0),
                                            iterpool));
              else
                SVN_ERR(reporter->set_path(report_baton,
                                           this_report_relpath,
                                           ths->revnum,
                                           ths->depth,
                                           FALSE,
                                           ths->lock ? ths->lock->token : ((void*)0),
                                           iterpool));
            }


          else if (this_switched)
            SVN_ERR(reporter->link_path(report_baton,
                                        this_report_relpath,
                                        svn_path_url_add_component2(
                                                dir_repos_root,
                                                ths->repos_relpath, iterpool),
                                        ths->revnum,
                                        ths->depth,
                                        FALSE,
                                        ths->lock ? ths->lock->token : ((void*)0),
                                        iterpool));


          else if (ths->revnum != dir_rev
                   || ths->lock
                   || dir_depth == svn_depth_empty)
            SVN_ERR(reporter->set_path(report_baton,
                                       this_report_relpath,
                                       ths->revnum,
                                       ths->depth,
                                       FALSE,
                                       ths->lock ? ths->lock->token : ((void*)0),
                                       iterpool));
        }


      else if (ths->kind == svn_node_dir
               && (depth > svn_depth_files
                   || depth == svn_depth_unknown))
        {
          svn_boolean_t is_incomplete;
          svn_boolean_t start_empty;
          svn_depth_t report_depth = ths->depth;

          is_incomplete = (ths->status == svn_wc__db_status_incomplete);
          start_empty = is_incomplete;

          if (!SVN_DEPTH_IS_RECURSIVE(depth))
            report_depth = svn_depth_empty;
          if (is_incomplete && !SVN_IS_VALID_REVNUM(ths->revnum))
            ths->revnum = dir_rev;

          if (depth_compatibility_trick
              && ths->depth <= svn_depth_files
              && depth > ths->depth)
            {
              start_empty = TRUE;
            }

          if (report_everything)
            {

              if (this_switched)
                SVN_ERR(reporter->link_path(report_baton,
                                            this_report_relpath,
                                            svn_path_url_add_component2(
                                                dir_repos_root,
                                                ths->repos_relpath, iterpool),
                                            ths->revnum,
                                            report_depth,
                                            start_empty,
                                            ths->lock ? ths->lock->token
                                                      : ((void*)0),
                                            iterpool));
              else
                SVN_ERR(reporter->set_path(report_baton,
                                           this_report_relpath,
                                           ths->revnum,
                                           report_depth,
                                           start_empty,
                                           ths->lock ? ths->lock->token : ((void*)0),
                                           iterpool));
            }
          else if (this_switched)
            {

              SVN_ERR(reporter->link_path(report_baton,
                                          this_report_relpath,
                                          svn_path_url_add_component2(
                                              dir_repos_root,
                                              ths->repos_relpath, iterpool),
                                          ths->revnum,
                                          report_depth,
                                          start_empty,
                                          ths->lock ? ths->lock->token : ((void*)0),
                                          iterpool));
            }
          else if (ths->revnum != dir_rev
                   || ths->lock
                   || is_incomplete
                   || dir_depth == svn_depth_empty
                   || dir_depth == svn_depth_files
                   || (dir_depth == svn_depth_immediates
                       && ths->depth != svn_depth_empty)
                   || (ths->depth < svn_depth_infinity
                       && SVN_DEPTH_IS_RECURSIVE(depth)))
            {






              SVN_ERR(reporter->set_path(report_baton,
                                         this_report_relpath,
                                         ths->revnum,
                                         report_depth,
                                         start_empty,
                                         ths->lock ? ths->lock->token : ((void*)0),
                                         iterpool));
            }


          if (SVN_DEPTH_IS_RECURSIVE(depth))
            {
              const char *repos_relpath = ths->repos_relpath;

              if (repos_relpath == ((void*)0))
                {
                  repos_relpath = svn_relpath_join(dir_repos_relpath, child,
                                                   iterpool);
                }

              SVN_ERR(report_revisions_and_depths(db,
                                                  this_abspath,
                                                  this_report_relpath,
                                                  ths->revnum,
                                                  repos_relpath,
                                                  dir_repos_root,
                                                  ths->depth,
                                                  reporter, report_baton,
                                                  restore_files, depth,
                                                  honor_depth_exclude,
                                                  depth_compatibility_trick,
                                                  start_empty,
                                                  use_commit_times,
                                                  cancel_func, cancel_baton,
                                                  notify_func, notify_baton,
                                                  iterpool));
            }
        }
    }


  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
