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
typedef  int /*<<< orphan*/  svn_ra_reporter_t ;
typedef  int /*<<< orphan*/  svn_ra_reporter3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* do_diff ) (void*,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ VTBL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**,void**,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const**,void**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC4(void *session_baton,
                                   const svn_ra_reporter_t **reporter,
                                   void **report_baton,
                                   svn_revnum_t revision,
                                   const char *diff_target,
                                   svn_boolean_t recurse,
                                   svn_boolean_t ignore_ancestry,
                                   const char *versus_url,
                                   const svn_delta_editor_t *diff_editor,
                                   void *diff_baton,
                                   apr_pool_t *pool)
{
  const svn_ra_reporter3_t *reporter3;
  void *baton3;
  svn_depth_t depth = FUNC0(recurse);

  FUNC1(VTBL.do_diff(session_baton, &reporter3, &baton3, revision,
                       diff_target, depth, ignore_ancestry, TRUE,
                       versus_url, diff_editor, diff_baton, pool));

  FUNC2(reporter, report_baton, reporter3, baton3, pool);

  return SVN_NO_ERROR;
}