#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_29__ {TYPE_3__* (* set_path ) (void*,char const*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_3__* (* link_path ) (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;TYPE_3__* (* delete_path ) (void*,char const*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ svn_ra_reporter3_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_30__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  TYPE_3__* (* svn_cancel_func_t ) (void*) ;
typedef  int svn_boolean_t ;
struct svn_wc__db_base_info_t {scalar_t__ status; char* repos_relpath; scalar_t__ depth; scalar_t__ kind; int /*<<< orphan*/  revnum; TYPE_1__* lock; scalar_t__ update_root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_28__ {int /*<<< orphan*/ * token; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* SVN_NO_ERROR ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 struct svn_wc__db_base_info_t* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,char const*,scalar_t__,int,int,TYPE_3__* (*) (void*),void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 
 TYPE_3__* FUNC11 (void*,char const*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (void*,char const*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC14 (void*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 (void*,char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC17 (void*,char const*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC19 (void*,char const*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC20 (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC21 (void*,char const*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_exclude ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 char* FUNC22 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_3__* FUNC25 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC26 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_symlink ; 
 int /*<<< orphan*/  FUNC27 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 void* FUNC31 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC32 (char const*,char*) ; 
 TYPE_3__* FUNC33 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC34 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC35(svn_wc__db_t *db,
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
  apr_pool_t *iterpool = FUNC29(scratch_pool);
  apr_hash_index_t *hi;
  svn_error_t *err;


  /* Get both the SVN Entries and the actual on-disk entries.   Also
     notice that we're picking up hidden entries too (read_children never
     hides children). */
  FUNC2(FUNC33(&base_children, db, dir_abspath,
                                            scratch_pool, iterpool));

  if (restore_files)
    {
      err = FUNC26(&dirents, dir_abspath, TRUE,
                                scratch_pool, scratch_pool);

      if (err && (FUNC0(err->apr_err)
                  || FUNC4(err->apr_err)))
        {
          FUNC23(err);
          /* There is no directory, and if we could create the directory
             we would have already created it when walking the parent
             directory */
          restore_files = FALSE;
          dirents = NULL;
        }
      else
        FUNC2(err);
    }
  else
    dirents = NULL;

  /*** Do the real reporting and recursing. ***/

  /* Looping over current directory's BASE children: */
  for (hi = FUNC5(scratch_pool, base_children);
       hi != NULL;
       hi = FUNC6(hi))
    {
      const char *child = FUNC7(hi);
      const char *this_report_relpath;
      const char *this_abspath;
      svn_boolean_t this_switched = FALSE;
      struct svn_wc__db_base_info_t *ths = FUNC8(hi);

      if (cancel_func)
        FUNC2(cancel_func(cancel_baton));

      /* Clear the iteration subpool here because the loop has a bunch
         of 'continue' jump statements. */
      FUNC28(iterpool);

      /* Compute the paths and URLs we need. */
      this_report_relpath = FUNC31(report_relpath, child, iterpool);
      this_abspath = FUNC22(dir_abspath, child, iterpool);

      /*** File Externals **/
      if (ths->update_root)
        {
          /* File externals are ... special.  We ignore them. */;
          continue;
        }

      /* First check for exclusion */
      if (ths->status == svn_wc__db_status_excluded)
        {
          if (honor_depth_exclude)
            {
              /* Report the excluded path, no matter whether report_everything
                 flag is set.  Because the report_everything flag indicates
                 that the server will treat the wc as empty and thus push
                 full content of the files/subdirs. But we want to prevent the
                 server from pushing the full content of this_path at us. */

              /* The server does not support link_path report on excluded
                 path. We explicitly prohibit this situation in
                 svn_wc_crop_tree(). */
              FUNC2(reporter->set_path(report_baton,
                                         this_report_relpath,
                                         dir_rev,
                                         svn_depth_exclude,
                                         FALSE,
                                         NULL,
                                         iterpool));
            }
          else
            {
              /* We want to pull in the excluded target. So, report it as
                 deleted, and server will respond properly. */
              if (! report_everything)
                FUNC2(reporter->delete_path(report_baton,
                                              this_report_relpath, iterpool));
            }
          continue;
        }

      /*** The Big Tests: ***/
      if (ths->status == svn_wc__db_status_server_excluded
          || ths->status == svn_wc__db_status_not_present)
        {
          /* If the entry is 'absent' or 'not-present', make sure the server
             knows it's gone...
             ...unless we're reporting everything, in which case we're
             going to report it missing later anyway.

             This instructs the server to send it back to us, if it is
             now available (an addition after a not-present state), or if
             it is now authorized (change in authz for the absent item).  */
          if (! report_everything)
            FUNC2(reporter->delete_path(report_baton, this_report_relpath,
                                          iterpool));
          continue;
        }

      /* Is the entry NOT on the disk? We may be able to restore it.  */
      if (restore_files
          && FUNC24(dirents, child) == NULL)
        {
          svn_wc__db_status_t wrk_status;
          svn_node_kind_t wrk_kind;
          const svn_checksum_t *checksum;
          svn_boolean_t conflicted;

          FUNC2(FUNC34(&wrk_status, &wrk_kind, NULL, NULL,
                                       NULL, NULL, NULL, NULL, NULL, NULL,
                                       &checksum, NULL, NULL, NULL, NULL, NULL,
                                       NULL, NULL, NULL, NULL, &conflicted,
                                       NULL, NULL, NULL, NULL, NULL, NULL,
                                       db, this_abspath, iterpool, iterpool));

          if ((wrk_status == svn_wc__db_status_normal
               || wrk_status == svn_wc__db_status_added
               || wrk_status == svn_wc__db_status_incomplete)
              && (wrk_kind == svn_node_dir || checksum))
            {
              svn_node_kind_t dirent_kind;

              /* It is possible on a case insensitive system that the
                 entry is not really missing, but just cased incorrectly.
                 In this case we can't overwrite it with the pristine
                 version */
              FUNC2(FUNC25(this_abspath, &dirent_kind, iterpool));

              if (dirent_kind == svn_node_none)
                {
                  FUNC2(FUNC9(db, this_abspath, wrk_kind,
                                       conflicted, use_commit_times,
                                       cancel_func, cancel_baton,
                                       notify_func, notify_baton, iterpool));
                }
            }
        }

      /* And finally prepare for reporting */
      if (!ths->repos_relpath)
        {
          ths->repos_relpath = FUNC31(dir_repos_relpath, child,
                                                iterpool);
        }
      else
        {
          const char *childname
            = FUNC32(dir_repos_relpath, ths->repos_relpath);

          if (childname == NULL || FUNC10(childname, child) != 0)
            {
              this_switched = TRUE;
            }
        }

      /* Tweak THIS_DEPTH to a useful value.  */
      if (ths->depth == svn_depth_unknown)
        ths->depth = svn_depth_infinity;

      /*** Files ***/
      if (ths->kind == svn_node_file
          || ths->kind == svn_node_symlink)
        {
          if (report_everything)
            {
              /* Report the file unconditionally, one way or another. */
              if (this_switched)
                FUNC2(reporter->link_path(report_baton,
                                            this_report_relpath,
                                            FUNC27(
                                                dir_repos_root,
                                                ths->repos_relpath, iterpool),
                                            ths->revnum,
                                            ths->depth,
                                            FALSE,
                                            ths->lock ? ths->lock->token : NULL,
                                            iterpool));
              else
                FUNC2(reporter->set_path(report_baton,
                                           this_report_relpath,
                                           ths->revnum,
                                           ths->depth,
                                           FALSE,
                                           ths->lock ? ths->lock->token : NULL,
                                           iterpool));
            }

          /* Possibly report a disjoint URL ... */
          else if (this_switched)
            FUNC2(reporter->link_path(report_baton,
                                        this_report_relpath,
                                        FUNC27(
                                                dir_repos_root,
                                                ths->repos_relpath, iterpool),
                                        ths->revnum,
                                        ths->depth,
                                        FALSE,
                                        ths->lock ? ths->lock->token : NULL,
                                        iterpool));
          /* ... or perhaps just a differing revision or lock token,
             or the mere presence of the file in a depth-empty dir. */
          else if (ths->revnum != dir_rev
                   || ths->lock
                   || dir_depth == svn_depth_empty)
            FUNC2(reporter->set_path(report_baton,
                                       this_report_relpath,
                                       ths->revnum,
                                       ths->depth,
                                       FALSE,
                                       ths->lock ? ths->lock->token : NULL,
                                       iterpool));
        } /* end file case */

      /*** Directories (in recursive mode) ***/
      else if (ths->kind == svn_node_dir
               && (depth > svn_depth_files
                   || depth == svn_depth_unknown))
        {
          svn_boolean_t is_incomplete;
          svn_boolean_t start_empty;
          svn_depth_t report_depth = ths->depth;

          is_incomplete = (ths->status == svn_wc__db_status_incomplete);
          start_empty = is_incomplete;

          if (!FUNC1(depth))
            report_depth = svn_depth_empty;

          /* When a <= 1.6 working copy is upgraded without some of its
             subdirectories we miss some information in the database. If we
             report the revision as -1, the update editor will receive an
             add_directory() while it still knows the directory.

             This would raise strange tree conflicts and probably assertions
             as it would a BASE vs BASE conflict */
          if (is_incomplete && !FUNC3(ths->revnum))
            ths->revnum = dir_rev;

          if (depth_compatibility_trick
              && ths->depth <= svn_depth_files
              && depth > ths->depth)
            {
              start_empty = TRUE;
            }

          if (report_everything)
            {
              /* Report the dir unconditionally, one way or another... */
              if (this_switched)
                FUNC2(reporter->link_path(report_baton,
                                            this_report_relpath,
                                            FUNC27(
                                                dir_repos_root,
                                                ths->repos_relpath, iterpool),
                                            ths->revnum,
                                            report_depth,
                                            start_empty,
                                            ths->lock ? ths->lock->token
                                                      : NULL,
                                            iterpool));
              else
                FUNC2(reporter->set_path(report_baton,
                                           this_report_relpath,
                                           ths->revnum,
                                           report_depth,
                                           start_empty,
                                           ths->lock ? ths->lock->token : NULL,
                                           iterpool));
            }
          else if (this_switched)
            {
              /* ...or possibly report a disjoint URL ... */
              FUNC2(reporter->link_path(report_baton,
                                          this_report_relpath,
                                          FUNC27(
                                              dir_repos_root,
                                              ths->repos_relpath, iterpool),
                                          ths->revnum,
                                          report_depth,
                                          start_empty,
                                          ths->lock ? ths->lock->token : NULL,
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
                       && FUNC1(depth)))
            {
              /* ... or perhaps just a differing revision, lock token,
                 incomplete subdir, the mere presence of the directory
                 in a depth-empty or depth-files dir, or if the parent
                 dir is at depth-immediates but the child is not at
                 depth-empty.  Also describe shallow subdirs if we are
                 trying to set depth to infinity. */
              FUNC2(reporter->set_path(report_baton,
                                         this_report_relpath,
                                         ths->revnum,
                                         report_depth,
                                         start_empty,
                                         ths->lock ? ths->lock->token : NULL,
                                         iterpool));
            }

          /* Finally, recurse if necessary and appropriate. */
          if (FUNC1(depth))
            {
              const char *repos_relpath = ths->repos_relpath;

              if (repos_relpath == NULL)
                {
                  repos_relpath = FUNC31(dir_repos_relpath, child,
                                                   iterpool);
                }

              FUNC2(FUNC35(db,
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
        } /* end directory case */
    } /* end main entries loop */

  /* We're done examining this dir's entries, so free everything. */
  FUNC30(iterpool);

  return SVN_NO_ERROR;
}