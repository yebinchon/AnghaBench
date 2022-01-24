#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_repos_revision_access_level_t ;
typedef  int /*<<< orphan*/  (* svn_repos_authz_func_t ) (scalar_t__*,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_path_change_iterator_t ;
struct TYPE_4__ {char const* data; } ;
struct TYPE_5__ {int change_kind; TYPE_1__ path; } ;
typedef  TYPE_2__ svn_fs_path_change3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
#define  svn_fs_path_change_add 131 
#define  svn_fs_path_change_delete 130 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ *) ; 
#define  svn_fs_path_change_modify 129 
#define  svn_fs_path_change_replace 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_revision_access_full ; 
 int /*<<< orphan*/  svn_repos_revision_access_none ; 
 int /*<<< orphan*/  svn_repos_revision_access_partial ; 

svn_error_t *
FUNC10(svn_repos_revision_access_level_t *access_level,
                                svn_repos_t *repos,
                                svn_revnum_t revision,
                                svn_repos_authz_func_t authz_read_func,
                                void *authz_read_baton,
                                apr_pool_t *pool)
{
  svn_fs_t *fs = FUNC9(repos);
  svn_fs_root_t *rev_root;
  svn_fs_path_change_iterator_t *iterator;
  svn_fs_path_change3_t *change;
  svn_boolean_t found_readable = FALSE;
  svn_boolean_t found_unreadable = FALSE;
  apr_pool_t *iterpool;

  /* By default, we'll grant full read access to REVISION. */
  *access_level = svn_repos_revision_access_full;

  /* No auth-checking function?  We're done. */
  if (! authz_read_func)
    return SVN_NO_ERROR;

  /* Fetch the changes associated with REVISION. */
  FUNC0(FUNC5(&rev_root, fs, revision, pool));
  FUNC0(FUNC4(&iterator, rev_root, pool, pool));
  FUNC0(FUNC3(&change, iterator));

  /* No changed paths?  We're done.

     Note that the check at "decision:" assumes that at least one
     path has been processed.  So, this actually affects functionality. */
  if (!change)
    return SVN_NO_ERROR;

  /* Otherwise, we have to check the readability of each changed
     path, or at least enough to answer the question asked. */
  iterpool = FUNC7(pool);
  while (change)
    {
      svn_boolean_t readable;

      FUNC6(iterpool);

      FUNC0(authz_read_func(&readable, rev_root, change->path.data,
                              authz_read_baton, iterpool));
      if (! readable)
        found_unreadable = TRUE;
      else
        found_readable = TRUE;

      /* If we have at least one of each (readable/unreadable), we
         have our answer. */
      if (found_readable && found_unreadable)
        goto decision;

      switch (change->change_kind)
        {
        case svn_fs_path_change_add:
        case svn_fs_path_change_replace:
          {
            const char *copyfrom_path;
            svn_revnum_t copyfrom_rev;

            FUNC0(FUNC2(&copyfrom_rev, &copyfrom_path,
                                       rev_root, change->path.data,
                                       iterpool));
            if (copyfrom_path && FUNC1(copyfrom_rev))
              {
                svn_fs_root_t *copyfrom_root;
                FUNC0(FUNC5(&copyfrom_root, fs,
                                             copyfrom_rev, iterpool));
                FUNC0(authz_read_func(&readable,
                                        copyfrom_root, copyfrom_path,
                                        authz_read_baton, iterpool));
                if (! readable)
                  found_unreadable = TRUE;

                /* If we have at least one of each (readable/unreadable), we
                   have our answer. */
                if (found_readable && found_unreadable)
                  goto decision;
              }
          }
          break;

        case svn_fs_path_change_delete:
        case svn_fs_path_change_modify:
        default:
          break;
        }

      FUNC0(FUNC3(&change, iterator));
    }

 decision:
  FUNC8(iterpool);

  /* Either every changed path was unreadable... */
  if (! found_readable)
    *access_level = svn_repos_revision_access_none;

  /* ... or some changed path was unreadable... */
  else if (found_unreadable)
    *access_level = svn_repos_revision_access_partial;

  /* ... or every changed path was readable (the default). */
  return SVN_NO_ERROR;
}