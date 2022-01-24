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
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ window_cache_key_t ;
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ combined_cache; } ;
typedef  TYPE_2__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_stringbuf_t *window,
                           rep_state_t *rs,
                           apr_pool_t *scratch_pool)
{
  if (rs->combined_cache)
    {
      /* but key it with the start offset because that is the known state
       * when we will look it up */
      window_cache_key_t key = { 0 };
      return FUNC1(rs->combined_cache,
                            FUNC0(&key, rs),
                            window,
                            scratch_pool);
    }

  return SVN_NO_ERROR;
}