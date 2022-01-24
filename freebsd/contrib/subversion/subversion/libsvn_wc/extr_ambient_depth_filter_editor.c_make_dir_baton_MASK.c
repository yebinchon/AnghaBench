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
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct edit_baton {int /*<<< orphan*/  db; int /*<<< orphan*/  anchor_abspath; } ;
struct dir_baton {scalar_t__ ambient_depth; struct edit_baton* edit_baton; void* ambiently_excluded; int /*<<< orphan*/  abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dir_baton* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_unknown ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_not_present ; 

__attribute__((used)) static svn_error_t *
FUNC6(struct dir_baton **d_p,
               const char *path,
               struct edit_baton *eb,
               struct dir_baton *pb,
               svn_boolean_t added,
               apr_pool_t *pool)
{
  struct dir_baton *d;

  FUNC1(path || (! pb));

  if (pb && pb->ambiently_excluded)
    {
      /* Just re-use the parent baton, since the only field that
         matters is ambiently_excluded. */
      *d_p = pb;
      return SVN_NO_ERROR;
    }

  /* Okay, no easy out, so allocate and initialize a dir baton. */
  d = FUNC3(pool, sizeof(*d));

  if (path)
    d->abspath = FUNC5(eb->anchor_abspath, path, pool);
  else
    d->abspath = FUNC4(pool, eb->anchor_abspath);

  /* The svn_depth_unknown means that: 1) pb is the anchor; 2) there
     is an non-null target, for which we are preparing the baton.
     This enables explicitly pull in the target. */
  if (pb && pb->ambient_depth != svn_depth_unknown)
    {
      svn_boolean_t exclude;
      svn_wc__db_status_t status;
      svn_node_kind_t kind;
      svn_boolean_t exists = TRUE;

      if (!added)
        {
          FUNC0(FUNC2(&status, &kind, NULL,
                                    eb->db, d->abspath, pool));
        }
      else
        {
          status = svn_wc__db_status_not_present;
          kind = svn_node_unknown;
        }

      exists = (kind != svn_node_unknown);

      if (pb->ambient_depth == svn_depth_empty
          || pb->ambient_depth == svn_depth_files)
        {
          /* This is not a depth upgrade, and the parent directory is
             depth==empty or depth==files.  So if the parent doesn't
             already have an entry for the new dir, then the parent
             doesn't want the new dir at all, thus we should initialize
             it with ambiently_excluded=TRUE. */
          exclude = !exists;
        }
      else
        {
          /* If the parent expect all children by default, only exclude
             it whenever it is explicitly marked as exclude. */
          exclude = exists && (status == svn_wc__db_status_excluded);
        }
      if (exclude)
        {
          d->ambiently_excluded = TRUE;
          *d_p = d;
          return SVN_NO_ERROR;
        }
    }

  d->edit_baton = eb;
  /* We'll initialize this differently in add_directory and
     open_directory. */
  d->ambient_depth = svn_depth_unknown;

  *d_p = d;
  return SVN_NO_ERROR;
}