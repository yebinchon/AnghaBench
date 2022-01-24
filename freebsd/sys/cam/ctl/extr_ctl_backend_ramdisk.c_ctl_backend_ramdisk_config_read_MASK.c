#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* cdb; } ;
union ctl_io {TYPE_1__ scsiio; } ;

/* Variables and functions */
 int CTL_RETVAL_COMPLETE ; 
#define  SERVICE_ACTION_IN 128 
 int SGLS_SERVICE_ACTION ; 
 int FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(union ctl_io *io)
{
	int retval = 0;

	switch (io->scsiio.cdb[0]) {
	case SERVICE_ACTION_IN:
		if (io->scsiio.cdb[1] == SGLS_SERVICE_ACTION) {
			retval = FUNC0(io);
			break;
		}
		FUNC2(&io->scsiio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ 1,
				      /*bit_valid*/ 1,
				      /*bit*/ 4);
		FUNC1(io);
		retval = CTL_RETVAL_COMPLETE;
		break;
	default:
		FUNC3(&io->scsiio);
		FUNC1(io);
		retval = CTL_RETVAL_COMPLETE;
		break;
	}
	return (retval);
}