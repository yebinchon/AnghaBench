#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_dirent_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  scalar_t__ svn_boolean_t ;
struct edit_baton {TYPE_2__* processor; int /*<<< orphan*/  revision; int /*<<< orphan*/  ra_session; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/ * (* cancel_func ) (int /*<<< orphan*/ ) ;} ;
struct dir_baton {int /*<<< orphan*/  pdb; struct edit_baton* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_6__ {int /*<<< orphan*/ * (* dir_deleted ) (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* dir_opened ) (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_DIRENT_KIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,struct dir_baton*,int /*<<< orphan*/ *) ; 
 struct dir_baton* FUNC8 (char const*,struct dir_baton*,struct edit_baton*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct dir_baton*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC18 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(const char *path,
                 struct dir_baton *pb,
                 apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = pb->edit_baton;
  struct dir_baton *db;
  apr_pool_t *iterpool = FUNC15(scratch_pool);
  svn_boolean_t skip = FALSE;
  svn_boolean_t skip_children = FALSE;
  apr_hash_t *dirents = NULL;
  apr_hash_t *left_props = NULL;
  svn_diff_source_t *left_source = FUNC13(eb->revision,
                                                           scratch_pool);
  db = FUNC8(path, pb, pb->edit_baton, FALSE, SVN_INVALID_REVNUM,
                      scratch_pool);

  FUNC1(FUNC2(eb->revision));

  if (eb->cancel_func)
    FUNC0(eb->cancel_func(eb->cancel_baton));

  FUNC0(eb->processor->dir_opened(&db->pdb, &skip, &skip_children,
                                    path,
                                    left_source,
                                    NULL /* right_source */,
                                    NULL /* copyfrom_source */,
                                    pb->pdb,
                                    eb->processor,
                                    scratch_pool, iterpool));

  if (!skip || !skip_children)
    FUNC0(FUNC17(eb->ra_session,
                            skip_children ? NULL : &dirents,
                            NULL,
                            skip ? NULL : &left_props,
                            path,
                            eb->revision,
                            SVN_DIRENT_KIND,
                            scratch_pool));

  /* The "old" dir will be skipped by the repository report.  If required,
   * crawl it recursively, diffing each file against the empty file.  This
   * is a workaround for issue 2333 "'svn diff URL1 URL2' not reverse of
   * 'svn diff URL2 URL1'". */
  if (! skip_children)
    {
      apr_hash_index_t *hi;

      for (hi = FUNC3(scratch_pool, dirents); hi;
           hi = FUNC4(hi))
        {
          const char *child_path;
          const char *name = FUNC5(hi);
          svn_dirent_t *dirent = FUNC6(hi);

          FUNC14(iterpool);

          child_path = FUNC18(path, name, iterpool);

          if (dirent->kind == svn_node_file)
            {
              FUNC0(FUNC7(child_path, db, iterpool));
            }
          else if (dirent->kind == svn_node_dir)
            {
              FUNC0(FUNC19(child_path, db, iterpool));
            }
        }
    }

  if (! skip)
    {
      FUNC0(eb->processor->dir_deleted(path,
                                         left_source,
                                         left_props,
                                         db->pdb,
                                         eb->processor,
                                         scratch_pool));
    }

  FUNC0(FUNC9(db));

  FUNC16(iterpool);
  return SVN_NO_ERROR;
}