#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct file_baton {char const* path; struct edit_baton* edit_baton; } ;
struct edit_baton {int /*<<< orphan*/  txn_root; int /*<<< orphan*/  base_path; } ;
struct dir_baton {struct edit_baton* edit_baton; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct file_baton* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct edit_baton*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct edit_baton*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_authz_read ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  struct file_baton *new_fb;
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  svn_revnum_t cr_rev;
  apr_pool_t *subpool = FUNC7(pool);
  const char *full_path;

  full_path = FUNC6(eb->base_path,
                               FUNC9(path, pool), pool);

  /* Check for read authorization. */
  FUNC0(FUNC3(eb, full_path, eb->txn_root,
                      svn_authz_read, subpool));

  /* Get this node's creation revision (doubles as an existence check). */
  FUNC0(FUNC5(&cr_rev, eb->txn_root, full_path,
                                  subpool));

  /* If the node our caller has is an older revision number than the
     one in our transaction, return an out-of-dateness error. */
  if (FUNC1(base_revision))
    FUNC0(FUNC4(eb, full_path, svn_node_file,
                              base_revision, cr_rev));

  /* Build a new file baton */
  new_fb = FUNC2(pool, sizeof(*new_fb));
  new_fb->edit_baton = eb;
  new_fb->path = full_path;

  *file_baton = new_fb;

  /* Destory the work subpool. */
  FUNC8(subpool);

  return SVN_NO_ERROR;
}