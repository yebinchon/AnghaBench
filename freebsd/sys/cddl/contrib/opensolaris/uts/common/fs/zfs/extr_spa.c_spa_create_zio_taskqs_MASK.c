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
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int ZIO_TASKQ_TYPES ; 
 int ZIO_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC1(spa_t *spa)
{
	for (int t = 0; t < ZIO_TYPES; t++) {
		for (int q = 0; q < ZIO_TASKQ_TYPES; q++) {
			FUNC0(spa, t, q);
		}
	}
}