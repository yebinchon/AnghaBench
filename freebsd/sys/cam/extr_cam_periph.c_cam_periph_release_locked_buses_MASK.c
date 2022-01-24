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
struct cam_periph {int refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 

void
FUNC3(struct cam_periph *periph)
{

	FUNC1(periph, MA_OWNED);
	FUNC0(periph->refcount >= 1, ("periph->refcount >= 1"));
	if (--periph->refcount == 0)
		FUNC2(periph);
}