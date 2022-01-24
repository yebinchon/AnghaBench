#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svn_wc__db_info_t {scalar_t__ kind; int status; int /*<<< orphan*/  have_more_work; } ;
struct file_baton_t {int /*<<< orphan*/  pool; void* right_src; void* left_src; int /*<<< orphan*/  relpath; void* skip; int /*<<< orphan*/  pfb; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  base_props; int /*<<< orphan*/  base_checksum; int /*<<< orphan*/  name; void* repos_only; void* ignoring_ancestry; } ;
struct edit_baton_t {TYPE_1__* processor; int /*<<< orphan*/  db; int /*<<< orphan*/  revnum; int /*<<< orphan*/  ignore_ancestry; } ;
struct dir_baton_t {int /*<<< orphan*/  pdb; int /*<<< orphan*/  pool; int /*<<< orphan*/  compared; int /*<<< orphan*/  local_info; scalar_t__ repos_only; scalar_t__ skip_children; struct edit_baton_t* eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* file_opened ) (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dir_baton_t*,int /*<<< orphan*/ *) ; 
 struct file_baton_t* FUNC5 (char const*,int /*<<< orphan*/ ,struct dir_baton_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svn_wc__db_info_t* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  svn_wc__db_status_added 131 
#define  svn_wc__db_status_deleted 130 
#define  svn_wc__db_status_incomplete 129 
#define  svn_wc__db_status_normal 128 

__attribute__((used)) static svn_error_t *
FUNC11(const char *path,
          void *parent_baton,
          svn_revnum_t base_revision,
          apr_pool_t *file_pool,
          void **file_baton)
{
  struct dir_baton_t *pb = parent_baton;
  struct edit_baton_t *eb = pb->eb;
  struct file_baton_t *fb;

  fb = FUNC5(path, FALSE, pb, file_pool);
  *file_baton = fb;

  if (pb->skip_children)
    fb->skip = TRUE;
  else if (pb->repos_only)
    fb->repos_only = TRUE;
  else
    {
      struct svn_wc__db_info_t *info;
      FUNC1(FUNC4(pb, file_pool));

      info = FUNC8(pb->local_info, fb->name);

      if (!info || info->kind != svn_node_file || FUNC0(info->status))
        fb->repos_only = TRUE;

      if (!fb->repos_only)
        switch (info->status)
          {
            case svn_wc__db_status_normal:
            case svn_wc__db_status_incomplete:
              break;
            case svn_wc__db_status_deleted:
              fb->repos_only = TRUE;
              if (!info->have_more_work)
                FUNC9(pb->compared,
                              FUNC3(pb->pool, fb->name), "");
              break;
            case svn_wc__db_status_added:
              if (eb->ignore_ancestry)
                fb->ignoring_ancestry = TRUE;
              else
                fb->repos_only = TRUE;
              break;
            default:
              FUNC2();
        }

      if (!fb->repos_only)
        {
          /* Add this path to the parent directory's list of elements that
             have been compared. */
          fb->right_src = FUNC7(SVN_INVALID_REVNUM, fb->pool);
          FUNC9(pb->compared, FUNC3(pb->pool, fb->name), "");
        }
    }

  fb->left_src = FUNC7(eb->revnum, fb->pool);

  FUNC1(FUNC10(NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, &fb->base_checksum, NULL,
                                   NULL, NULL, &fb->base_props, NULL,
                                   eb->db, fb->local_abspath,
                                   fb->pool, fb->pool));

  FUNC1(eb->processor->file_opened(&fb->pfb, &fb->skip,
                                     fb->relpath,
                                     fb->left_src,
                                     fb->right_src,
                                     NULL /* copyfrom src */,
                                     pb->pdb,
                                     eb->processor,
                                     fb->pool, fb->pool));

  return SVN_NO_ERROR;
}