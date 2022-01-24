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
typedef  int /*<<< orphan*/  svn_prop_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct file_baton {int shadowed; void* changed_rev; struct dir_baton* dir_baton; int /*<<< orphan*/  skip_this; void* add_existed; void* obstruction_found; int /*<<< orphan*/  adding_file; int /*<<< orphan*/  bump_info; int /*<<< orphan*/  propchanges; int /*<<< orphan*/  edit_baton; int /*<<< orphan*/ * pool; int /*<<< orphan*/  name; int /*<<< orphan*/  local_abspath; void* old_revision; } ;
struct dir_baton {int /*<<< orphan*/  ref_count; scalar_t__ edit_obstructed; scalar_t__ shadowed; int /*<<< orphan*/  skip_this; int /*<<< orphan*/  bump_info; int /*<<< orphan*/  edit_baton; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 struct file_baton* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(struct file_baton **f_p,
                struct dir_baton *pb,
                const char *path,
                svn_boolean_t adding,
                apr_pool_t *scratch_pool)
{
  apr_pool_t *file_pool = FUNC6(pb->pool);
  struct file_baton *f = FUNC3(file_pool, sizeof(*f));

  FUNC1(path);

  /* Make the file's on-disk name. */
  f->name = FUNC5(path, file_pool);
  f->old_revision = SVN_INVALID_REVNUM;
  FUNC0(FUNC4(&f->local_abspath,
                               pb->local_abspath, f->name, file_pool));

  f->pool              = file_pool;
  f->edit_baton        = pb->edit_baton;
  f->propchanges       = FUNC2(file_pool, 1, sizeof(svn_prop_t));
  f->bump_info         = pb->bump_info;
  f->adding_file       = adding;
  f->obstruction_found = FALSE;
  f->add_existed       = FALSE;
  f->skip_this         = pb->skip_this;
  f->shadowed          = pb->shadowed || pb->edit_obstructed;
  f->dir_baton         = pb;
  f->changed_rev       = SVN_INVALID_REVNUM;

  /* the directory has one more referer now */
  pb->ref_count++;

  *f_p = f;
  return SVN_NO_ERROR;
}