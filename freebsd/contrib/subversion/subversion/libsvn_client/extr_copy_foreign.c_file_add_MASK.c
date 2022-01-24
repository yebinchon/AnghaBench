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
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton_t {int /*<<< orphan*/ * pool; int /*<<< orphan*/  local_abspath; struct dir_baton_t* pb; struct edit_baton_t* eb; } ;
struct edit_baton_t {int /*<<< orphan*/  anchor_abspath; } ;
struct dir_baton_t {int /*<<< orphan*/  users; int /*<<< orphan*/  pool; struct edit_baton_t* eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_OBSTRUCTED_UPDATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct file_baton_t* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_revision,
         apr_pool_t *result_pool,
         void **file_baton)
{
  struct dir_baton_t *pb = parent_baton;
  struct edit_baton_t *eb = pb->eb;
  apr_pool_t *file_pool = FUNC6(pb->pool);
  struct file_baton_t *fb = FUNC2(file_pool, sizeof(*fb));
  svn_boolean_t under_root;

  pb->users++;

  fb->pool = file_pool;
  fb->eb = eb;
  fb->pb = pb;

  FUNC0(FUNC3(&under_root, &fb->local_abspath,
                                   eb->anchor_abspath, path, fb->pool));
  if (! under_root)
    {
      return FUNC5(
                    SVN_ERR_WC_OBSTRUCTED_UPDATE, NULL,
                    FUNC1("Path '%s' is not in the working copy"),
                    FUNC4(path, fb->pool));
    }

  *file_baton = fb;
  return SVN_NO_ERROR;
}