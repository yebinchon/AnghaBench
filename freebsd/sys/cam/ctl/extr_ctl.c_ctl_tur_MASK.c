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
typedef  union ctl_io {int dummy; } ctl_io ;
struct ctl_scsiio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_scsiio*) ; 

int
FUNC3(struct ctl_scsiio *ctsio)
{

	FUNC0(("ctl_tur\n"));

	FUNC2(ctsio);
	FUNC1((union ctl_io *)ctsio);

	return (CTL_RETVAL_COMPLETE);
}