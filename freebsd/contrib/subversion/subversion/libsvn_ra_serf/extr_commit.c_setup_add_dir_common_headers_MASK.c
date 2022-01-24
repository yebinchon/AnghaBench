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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_2__ {int /*<<< orphan*/  relpath; int /*<<< orphan*/  commit_ctx; } ;
typedef  TYPE_1__ dir_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(serf_bucket_t *headers,
                             void *baton,
                             apr_pool_t *pool /* request pool */,
                             apr_pool_t *scratch_pool)
{
  dir_context_t *dir = baton;
  svn_boolean_t added;

  return FUNC1(
      FUNC0(&added, headers, dir->commit_ctx, dir->relpath,
                                pool));
}