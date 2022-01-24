#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  is_subbranch_root; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_1__ svn_element__payload_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

svn_element__payload_t *
FUNC3(apr_pool_t *result_pool)
{
  svn_element__payload_t *new_payload
    = FUNC0(result_pool, sizeof(*new_payload));

  new_payload->pool = result_pool;
  new_payload->is_subbranch_root = TRUE;
  FUNC1(FUNC2(new_payload));
  return new_payload;
}