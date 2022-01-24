#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cam_periph {int /*<<< orphan*/  path; } ;
struct bio {int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_completed; int /*<<< orphan*/  bio_attribute; int /*<<< orphan*/  bio_data; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bio *bp)
{
	int ret;
	struct cam_periph *periph;

	periph = (struct cam_periph *)bp->bio_disk->d_drv1;
	FUNC0(periph);
	ret = FUNC2(bp->bio_data, bp->bio_length, bp->bio_attribute,
	    periph->path);
	FUNC1(periph);
	if (ret == 0)
		bp->bio_completed = bp->bio_length;
	return ret;
}