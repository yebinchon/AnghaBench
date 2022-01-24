#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct cam_periph {TYPE_2__* path; int /*<<< orphan*/  periph_allocated; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  ccbq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMCCB ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 union ccb* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static union ccb *
FUNC4(struct cam_periph *periph)
{
	union ccb *new_ccb;

	FUNC2(periph);
	new_ccb = FUNC3(sizeof(*new_ccb), M_CAMCCB, M_ZERO|M_WAITOK);
	FUNC1(periph);
	periph->periph_allocated++;
	FUNC0(&periph->path->device->ccbq);
	return (new_ccb);
}