#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  eol; } ;
typedef  TYPE_1__ svn_fs_fs__changes_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {scalar_t__ change_count; int /*<<< orphan*/  revision; } ;
typedef  TYPE_2__ revision_info_t ;
struct TYPE_12__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_3__ query_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {scalar_t__ nelts; } ;
typedef  TYPE_4__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(query_t *query,
                      revision_info_t *revision_info,
                      apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC4(scratch_pool);
  svn_fs_fs__changes_context_t *context;

  /* Fetch the first block of data. */
  FUNC0(FUNC1(&context, query->fs,
                                            revision_info->revision,
                                            scratch_pool));

  revision_info->change_count = 0;
  while (!context->eol)
    {
      apr_array_header_t *changes;

      FUNC3(iterpool);
      FUNC0(FUNC2(&changes, context, iterpool, iterpool));
      revision_info->change_count = changes->nelts;
    }

  FUNC5(iterpool);

  return SVN_NO_ERROR;
}