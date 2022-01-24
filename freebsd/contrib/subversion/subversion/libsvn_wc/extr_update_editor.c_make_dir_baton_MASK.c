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
struct edit_baton {int /*<<< orphan*/  anchor_abspath; int /*<<< orphan*/ * pool; } ;
struct dir_baton {int ref_count; int shadowed; void* was_incomplete; int /*<<< orphan*/  ambient_depth; scalar_t__ edit_obstructed; int /*<<< orphan*/  skip_this; int /*<<< orphan*/  not_present_nodes; void* changed_rev; int /*<<< orphan*/  adding_dir; void* old_revision; void* add_existed; void* obstruction_found; int /*<<< orphan*/  propchanges; int /*<<< orphan*/ * pool; struct dir_baton* parent_baton; struct edit_baton* edit_baton; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct dir_baton* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_unknown ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(struct dir_baton **d_p,
               const char *path,
               struct edit_baton *eb,
               struct dir_baton *pb,
               svn_boolean_t adding,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *dir_pool;
  struct dir_baton *d;

  if (pb != NULL)
    dir_pool = FUNC7(pb->pool);
  else
    dir_pool = FUNC7(eb->pool);

  FUNC1(path || (! pb));

  /* Okay, no easy out, so allocate and initialize a dir baton. */
  d = FUNC4(dir_pool, sizeof(*d));

  /* Construct the PATH and baseNAME of this directory. */
  if (path)
    {
      d->name = FUNC6(path, dir_pool);
      FUNC0(FUNC5(&d->local_abspath,
                                   pb->local_abspath, d->name, dir_pool));
    }
  else
    {
      /* This is the root baton. */
      d->name = NULL;
      d->local_abspath = eb->anchor_abspath;
    }

  d->edit_baton   = eb;
  d->parent_baton = pb;
  d->pool         = dir_pool;
  d->propchanges  = FUNC2(dir_pool, 1, sizeof(svn_prop_t));
  d->obstruction_found = FALSE;
  d->add_existed  = FALSE;
  d->ref_count = 1;
  d->old_revision = SVN_INVALID_REVNUM;
  d->adding_dir   = adding;
  d->changed_rev  = SVN_INVALID_REVNUM;
  d->not_present_nodes = FUNC3(dir_pool);

  /* Copy some flags from the parent baton */
  if (pb)
    {
      d->skip_this = pb->skip_this;
      d->shadowed = pb->shadowed || pb->edit_obstructed;

      /* the parent's bump info has one more referer */
      pb->ref_count++;
    }

  /* The caller of this function needs to fill these in. */
  d->ambient_depth = svn_depth_unknown;
  d->was_incomplete = FALSE;

  *d_p = d;
  return SVN_NO_ERROR;
}