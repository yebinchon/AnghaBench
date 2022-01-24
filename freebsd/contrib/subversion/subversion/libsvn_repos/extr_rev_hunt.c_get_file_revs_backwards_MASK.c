#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_4__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  (* svn_repos_authz_func_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_history_t ;
typedef  int /*<<< orphan*/  svn_file_rev_handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct send_baton {int /*<<< orphan*/ * iterpool; int /*<<< orphan*/ * last_pool; int /*<<< orphan*/  last_props; int /*<<< orphan*/ * last_path; int /*<<< orphan*/ * last_root; void* include_merged_revisions; } ;
struct path_revision {char const* path; scalar_t__ revnum; void* merged; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NOT_FILE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct path_revision* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct path_revision*,TYPE_1__*,struct send_baton*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_repos_t *repos,
                        const char *path,
                        svn_revnum_t start,
                        svn_revnum_t end,
                        svn_repos_authz_func_t authz_read_func,
                        void *authz_read_baton,
                        svn_file_rev_handler_t handler,
                        void *handler_baton,
                        apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool, *last_pool;
  svn_fs_history_t *history;
  svn_fs_root_t *root;
  svn_node_kind_t kind;
  struct send_baton sb;

  /* We switch between two pools while looping and so does the path-rev
     handler for actually reported revisions. We do this as we
     need just information from last iteration to be available. */

  iterpool = FUNC12(scratch_pool);
  last_pool = FUNC12(scratch_pool);
  sb.iterpool = FUNC12(scratch_pool);
  sb.last_pool = FUNC12(scratch_pool);
  sb.include_merged_revisions = FALSE;

  /* We want the first txdelta to be against the empty file. */
  sb.last_root = NULL;
  sb.last_path = NULL;

  /* Create an empty hash table for the first property diff. */
  sb.last_props = FUNC2(sb.last_pool);

  /* The path had better be a file in this revision. */
  FUNC0(FUNC10(&root, repos->fs, end, scratch_pool));
  FUNC0(FUNC6(&kind, root, path, scratch_pool));
  if (kind != svn_node_file)
    return FUNC5(SVN_ERR_FS_NOT_FILE,
                             NULL, FUNC1("'%s' is not a file in revision %ld"),
                             path, end);

  /* Open a history object. */
  FUNC0(FUNC9(&history, root, path, scratch_pool, iterpool));
  while (1)
    {
      struct path_revision *path_rev;
      svn_revnum_t tmp_revnum;
      const char *tmp_path;

      FUNC11(iterpool);

      /* Fetch the history object to walk through. */
      FUNC0(FUNC8(&history, history, TRUE, iterpool,
                                   iterpool));
      if (!history)
        break;
      FUNC0(FUNC7(&tmp_path, &tmp_revnum,
                                      history, iterpool));

      /* Check authorization. */
      if (authz_read_func)
        {
          svn_boolean_t readable;
          svn_fs_root_t *tmp_root;

          FUNC0(FUNC10(&tmp_root, repos->fs, tmp_revnum,
                                       iterpool));
          FUNC0(authz_read_func(&readable, tmp_root, tmp_path,
                                  authz_read_baton, iterpool));
          if (! readable)
            break;
        }

      /* We didn't break, so we must really want this path-rev. */
      path_rev = FUNC3(iterpool, sizeof(*path_rev));
      path_rev->path = tmp_path;
      path_rev->revnum = tmp_revnum;
      path_rev->merged = FALSE;

      FUNC0(FUNC4(path_rev, repos, &sb,
                                 handler, handler_baton));

      if (path_rev->revnum <= start)
        break;

      /* Swap pools. */
      {
        apr_pool_t *tmp_pool = iterpool;
        iterpool = last_pool;
        last_pool = tmp_pool;
      }
    }

  FUNC13(iterpool);
  FUNC13(last_pool);
  FUNC13(sb.last_pool);
  FUNC13(sb.iterpool);

  return SVN_NO_ERROR;

}