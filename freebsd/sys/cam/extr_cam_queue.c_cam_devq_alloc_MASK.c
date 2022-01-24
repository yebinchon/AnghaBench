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
struct cam_devq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CAMDEVQ ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC0 (struct cam_devq*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_devq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

struct cam_devq *
FUNC4(int devices, int openings)
{
	struct cam_devq *devq;

	devq = (struct cam_devq *)FUNC2(sizeof(*devq), M_CAMDEVQ, M_NOWAIT);
	if (devq == NULL) {
		FUNC3("cam_devq_alloc: - cannot malloc!\n");
		return (NULL);
	}
	if (FUNC0(devq, devices, openings) != 0) {
		FUNC1(devq, M_CAMDEVQ);
		return (NULL);
	}
	return (devq);
}