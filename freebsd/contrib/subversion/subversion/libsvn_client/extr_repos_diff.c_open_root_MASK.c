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
struct edit_baton {TYPE_1__* processor; int /*<<< orphan*/  target_revision; int /*<<< orphan*/  revision; int /*<<< orphan*/  pool; } ;
struct dir_baton {int /*<<< orphan*/  pool; void* right_source; void* left_source; int /*<<< orphan*/  skip_children; int /*<<< orphan*/  skip; int /*<<< orphan*/  pdb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* dir_opened ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct dir_baton* FUNC1 (char*,int /*<<< orphan*/ *,struct edit_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *edit_baton,
          svn_revnum_t base_revision,
          apr_pool_t *pool,
          void **root_baton)
{
  struct edit_baton *eb = edit_baton;
  struct dir_baton *db = FUNC1("", NULL, eb, FALSE, base_revision,
                                        eb->pool);

  db->left_source = FUNC3(eb->revision, db->pool);
  db->right_source = FUNC3(eb->target_revision, db->pool);

  FUNC0(eb->processor->dir_opened(&db->pdb,
                                    &db->skip,
                                    &db->skip_children,
                                    "",
                                    db->left_source,
                                    db->right_source,
                                    NULL,
                                    NULL,
                                    eb->processor,
                                    db->pool,
                                    db->pool /* scratch_pool */));

  *root_baton = db;
  return SVN_NO_ERROR;
}