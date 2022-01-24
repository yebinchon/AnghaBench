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
struct zone_dataset_head {int dummy; } ;
typedef  struct zone_dataset_head zone_dataset_t ;

/* Variables and functions */
 struct zone_dataset_head* FUNC0 (struct zone_dataset_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct zone_dataset_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ZONES ; 
 int /*<<< orphan*/  FUNC2 (struct zone_dataset_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zd_next ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct zone_dataset_head *head;
	zone_dataset_t *zd;

	head = arg;
        while ((zd = FUNC0(head)) != NULL) {
                FUNC1(zd, zd_next);
                FUNC2(zd, M_ZONES);
        }
        FUNC2(head, M_ZONES);
}