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
struct protoent_data {scalar_t__ stayopen; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct protoent_data *ped)
{
	if (ped->fp) {
		FUNC0(ped->fp);
		ped->fp = NULL;
	}
	ped->stayopen = 0;
}