#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* by_path; void* by_repository; } ;
typedef  TYPE_1__ svn_client__committables_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(svn_client__committables_t **committables,
                    apr_pool_t *pool)
{
  *committables = FUNC1(pool, sizeof(**committables));

  (*committables)->by_repository = FUNC0(pool);
  (*committables)->by_path = FUNC0(pool);
}