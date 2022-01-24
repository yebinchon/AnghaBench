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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_commit_info_t ;
struct capture_baton_t {int /*<<< orphan*/  original_baton; int /*<<< orphan*/  (* original_callback ) (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  pool; int /*<<< orphan*/ * info; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(const svn_commit_info_t *commit_info,
                    void *baton,
                    apr_pool_t *pool)
{
  struct capture_baton_t *cb = baton;

  *(cb->info) = FUNC2(commit_info, cb->pool);

  if (cb->original_callback)
    FUNC0((cb->original_callback)(commit_info, cb->original_baton, pool));

  return SVN_NO_ERROR;
}