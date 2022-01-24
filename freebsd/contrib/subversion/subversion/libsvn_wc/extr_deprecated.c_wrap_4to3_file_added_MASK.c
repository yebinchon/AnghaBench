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
typedef  int /*<<< orphan*/  svn_wc_notify_state_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct diff_callbacks3_wrapper_baton {int /*<<< orphan*/  baton; int /*<<< orphan*/  anchor; TYPE_1__* callbacks3; int /*<<< orphan*/  anchor_abspath; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_2__ {int /*<<< orphan*/ * (* file_added ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_wc_notify_state_t *contentstate,
                     svn_wc_notify_state_t *propstate,
                     svn_boolean_t *tree_conflicted,
                     const char *path,
                     const char *tmpfile1,
                     const char *tmpfile2,
                     svn_revnum_t rev1,
                     svn_revnum_t rev2,
                     const char *mimetype1,
                     const char *mimetype2,
                     const char *copyfrom_path,
                     svn_revnum_t copyfrom_revision,
                     const apr_array_header_t *propchanges,
                     apr_hash_t *originalprops,
                     void *diff_baton,
                     apr_pool_t *scratch_pool)
{
  struct diff_callbacks3_wrapper_baton *b = diff_baton;
  svn_wc_adm_access_t *adm_access;
  const char *dir = FUNC2(path, scratch_pool);

  adm_access = FUNC3(
                        b->db,
                        FUNC1(b->anchor_abspath, dir, scratch_pool),
                        scratch_pool);

  return b->callbacks3->file_added(adm_access, contentstate, propstate,
                                   tree_conflicted,
                                   FUNC1(b->anchor, path,
                                                   scratch_pool),
                                   tmpfile1, tmpfile2,
                                   rev1, rev2, mimetype1, mimetype2,
                                   propchanges, originalprops, b->baton);
}