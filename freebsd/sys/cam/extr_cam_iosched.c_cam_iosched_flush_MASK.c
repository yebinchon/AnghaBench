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
struct devstat {int dummy; } ;
struct cam_iosched_softc {int /*<<< orphan*/  write_queue; int /*<<< orphan*/  trim_queue; int /*<<< orphan*/  bio_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct devstat*,int) ; 
 scalar_t__ do_dynamic_iosched ; 

void
FUNC1(struct cam_iosched_softc *isc, struct devstat *stp, int err)
{
	FUNC0(&isc->bio_queue, stp, err);
	FUNC0(&isc->trim_queue, stp, err);
#ifdef CAM_IOSCHED_DYNAMIC
	if (do_dynamic_iosched)
		bioq_flush(&isc->write_queue, stp, err);
#endif
}