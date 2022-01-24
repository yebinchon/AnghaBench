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
struct dos_partition {int dp_typ; int dp_start; int dp_size; int dp_shd; int dp_ehd; void* dp_esect; void* dp_ecyl; void* dp_ssect; void* dp_scyl; } ;
struct TYPE_2__ {struct dos_partition* parts; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (void*,void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 int NO_DISK_SECTORS ; 
 int NO_TRACK_CYLINDERS ; 
 int NO_TRACK_HEADS ; 
 int NO_TRACK_SECTORS ; 
 int /*<<< orphan*/  FUNC5 (struct dos_partition*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dos_partition*) ; 
 scalar_t__ i_flag ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_1__ mboot ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct dos_partition*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct dos_partition*) ; 
 scalar_t__ u_flag ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(int i)
{
    struct dos_partition *partp = &mboot.parts[i - 1];

    FUNC10("The data for partition %d is:\n", i);
    FUNC9(partp);

    if (u_flag && FUNC8("Do you want to change it?")) {
	int tmp;

	if (i_flag) {
	    FUNC5(partp, sizeof (*partp));
	    if (i == 1) {
		FUNC7(1);
		FUNC10("\nThe static data for the slice 1 has been reinitialized to:\n");
		FUNC9(partp);
	    }
	}

	do {
		FUNC4("sysid (165=FreeBSD)", partp->dp_typ, tmp, 255);
		FUNC4("start", partp->dp_start, tmp, NO_DISK_SECTORS);
		FUNC4("size", partp->dp_size, tmp, NO_DISK_SECTORS);
		if (!FUNC11(partp)) {
			FUNC12("ERROR: failed to adjust; setting sysid to 0");
			partp->dp_typ = 0;
		}

		if (FUNC8("Explicitly specify beg/end address ?"))
		{
			int	tsec,tcyl,thd;
			tcyl = FUNC2(partp->dp_scyl,partp->dp_ssect);
			thd = partp->dp_shd;
			tsec = FUNC3(partp->dp_ssect);
			FUNC4("beginning cylinder", tcyl, tmp, NO_TRACK_CYLINDERS);
			FUNC4("beginning head", thd, tmp, NO_TRACK_HEADS);
			FUNC4("beginning sector", tsec, tmp, NO_TRACK_SECTORS);
			partp->dp_scyl = FUNC0(tcyl);
			partp->dp_ssect = FUNC1(tsec,tcyl);
			partp->dp_shd = thd;

			tcyl = FUNC2(partp->dp_ecyl,partp->dp_esect);
			thd = partp->dp_ehd;
			tsec = FUNC3(partp->dp_esect);
			FUNC4("ending cylinder", tcyl, tmp, NO_TRACK_CYLINDERS);
			FUNC4("ending head", thd, tmp, NO_TRACK_HEADS);
			FUNC4("ending sector", tsec, tmp, NO_TRACK_SECTORS);
			partp->dp_ecyl = FUNC0(tcyl);
			partp->dp_esect = FUNC1(tsec,tcyl);
			partp->dp_ehd = thd;
		} else
			FUNC6(partp);

		FUNC9(partp);
	} while (!FUNC8("Are we happy with this entry?"));
    }
}