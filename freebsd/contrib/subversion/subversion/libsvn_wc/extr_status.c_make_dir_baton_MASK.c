#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ depth; scalar_t__ versioned; } ;
typedef  TYPE_2__ svn_wc_status3_t ;
struct TYPE_4__ {scalar_t__ depth; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; } ;
struct TYPE_6__ {TYPE_1__ s; scalar_t__ has_descendants; } ;
typedef  TYPE_3__ svn_wc__internal_status_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {char* anchor_abspath; scalar_t__ default_depth; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  wb; int /*<<< orphan*/ * ignores; TYPE_3__* anchor_status; } ;
struct dir_baton {char const* local_abspath; scalar_t__ depth; int /*<<< orphan*/  statii; void* excluded; int /*<<< orphan*/ * ood_changed_author; int /*<<< orphan*/  ood_kind; int /*<<< orphan*/  repos_relpath; scalar_t__ ood_changed_date; int /*<<< orphan*/  ood_changed_rev; struct dir_baton* parent_baton; struct edit_baton* edit_baton; int /*<<< orphan*/ * name; int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dir_baton* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dir_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hash_stash ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 scalar_t__ svn_depth_infinity ; 
 scalar_t__ svn_depth_unknown ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,char const*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(void **dir_baton,
               const char *path,
               struct edit_baton *edit_baton,
               struct dir_baton *parent_baton,
               apr_pool_t *result_pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = edit_baton;
  struct dir_baton *d;
  const char *local_abspath;
  const svn_wc__internal_status_t *status_in_parent;
  apr_pool_t *dir_pool;

  if (parent_baton)
    dir_pool = FUNC9(parent_baton->pool);
  else
    dir_pool = FUNC9(result_pool);

  d = FUNC3(dir_pool, sizeof(*d));

  FUNC1(path || (! pb));

  /* Construct the absolute path of this directory. */
  if (pb)
    local_abspath = FUNC7(eb->anchor_abspath, path, dir_pool);
  else
    local_abspath = eb->anchor_abspath;

  /* Finish populating the baton members. */
  d->pool = dir_pool;
  d->local_abspath = local_abspath;
  d->name = path ? FUNC6(path, dir_pool) : NULL;
  d->edit_baton = edit_baton;
  d->parent_baton = parent_baton;
  d->statii = FUNC2(dir_pool);
  d->ood_changed_rev = SVN_INVALID_REVNUM;
  d->ood_changed_date = 0;
  d->repos_relpath = FUNC4(d, dir_pool);
  d->ood_kind = svn_node_dir;
  d->ood_changed_author = NULL;

  if (pb)
    {
      if (pb->excluded)
        d->excluded = TRUE;
      else if (pb->depth == svn_depth_immediates)
        d->depth = svn_depth_empty;
      else if (pb->depth == svn_depth_files || pb->depth == svn_depth_empty)
        d->excluded = TRUE;
      else if (pb->depth == svn_depth_unknown)
        /* This is only tentative, it can be overridden from d's entry
           later. */
        d->depth = svn_depth_unknown;
      else
        d->depth = svn_depth_infinity;
    }
  else
    {
      d->depth = eb->default_depth;
    }

  /* Get the status for this path's children.  Of course, we only want
     to do this if the path is versioned as a directory. */
  if (pb)
    status_in_parent = FUNC8(pb->statii, d->local_abspath);
  else
    status_in_parent = eb->anchor_status;

  if (status_in_parent
      && (status_in_parent->has_descendants)
      && (! d->excluded)
      && (d->depth == svn_depth_unknown
          || d->depth == svn_depth_infinity
          || d->depth == svn_depth_files
          || d->depth == svn_depth_immediates)
          )
    {
      const svn_wc_status3_t *this_dir_status;
      const apr_array_header_t *ignores = eb->ignores;

      FUNC0(FUNC5(&eb->wb, local_abspath, TRUE,
                             status_in_parent->s.repos_root_url,
                             NULL /*parent_repos_relpath*/,
                             status_in_parent->s.repos_uuid,
                             NULL,
                             NULL /* dirent */, ignores,
                             d->depth == svn_depth_files
                                      ? svn_depth_files
                                      : svn_depth_immediates,
                             TRUE, TRUE,
                             hash_stash, d->statii,
                             eb->cancel_func, eb->cancel_baton,
                             dir_pool));

      /* If we found a depth here, it should govern. */
      this_dir_status = FUNC8(d->statii, d->local_abspath);
      if (this_dir_status && this_dir_status->versioned
          && (d->depth == svn_depth_unknown
              || d->depth > status_in_parent->s.depth))
        {
          d->depth = this_dir_status->depth;
        }
    }

  *dir_baton = d;
  return SVN_NO_ERROR;
}