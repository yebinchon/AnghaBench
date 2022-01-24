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
struct sbuf {int dummy; } ;
struct ccb_scsiio {int dummy; } ;
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SSS_FLAG_PRINT_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_device*,struct ccb_scsiio*,struct sbuf*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct cam_device *device, struct ccb_scsiio *csio, 
		 FILE *ofile)
{
	struct sbuf sb;
	char str[512];

	if ((device == NULL) || (csio == NULL) || (ofile == NULL))
		return;

	FUNC3(&sb, str, sizeof(str), 0);

	FUNC4(device, csio, &sb, SSS_FLAG_PRINT_COMMAND);

	FUNC2(&sb);

	FUNC0(ofile, "%s", FUNC1(&sb));
}