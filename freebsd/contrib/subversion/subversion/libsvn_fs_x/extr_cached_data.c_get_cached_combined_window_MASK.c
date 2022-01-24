#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ svn_fs_x__window_cache_key_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  combined_cache; } ;
typedef  TYPE_2__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_stringbuf_t **window_p,
                           rep_state_t *rs,
                           svn_boolean_t *is_cached,
                           apr_pool_t *pool)
{
  /* ask the cache for the desired txdelta window */
  svn_fs_x__window_cache_key_t key = { 0 };
  return FUNC1((void **)window_p,
                        is_cached,
                        rs->combined_cache,
                        FUNC0(&key, rs),
                        pool);
}