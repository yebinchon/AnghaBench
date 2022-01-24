#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct specification_packet {int sp_cylsec; int sp_head; } ;
struct TYPE_6__ {int bd_unit; int bd_cyl; int bd_hds; int bd_sec; int bd_sectors; int /*<<< orphan*/  bd_flags; } ;
typedef  TYPE_1__ bdinfo_t ;
struct TYPE_7__ {int addr; int eax; int edx; int /*<<< orphan*/  esi; int /*<<< orphan*/  ds; int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_CDROM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V86_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (struct specification_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct specification_packet*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  bd_link ; 
 TYPE_1__* FUNC6 (int,int) ; 
 int /*<<< orphan*/  cdinfo ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 TYPE_2__ v86 ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int biosdev)
{
	bdinfo_t *bd;
	struct specification_packet bc_sp;
	int nbcinfo = 0;

	if (!FUNC0(&cdinfo))
                return (-1);

        v86.ctl = V86_FLAGS;
        v86.addr = 0x13;
        v86.eax = 0x4b01;
        v86.edx = biosdev;
        v86.ds = FUNC3(&bc_sp);
        v86.esi = FUNC2(&bc_sp);
        FUNC8();
        if ((v86.eax & 0xff00) != 0)
                return (-1);

	if ((bd = FUNC6(1, sizeof(*bd))) == NULL)
		return (-1);

	bd->bd_flags = BD_CDROM;
        bd->bd_unit = biosdev;

	/*
	 * Ignore result from bd_int13probe(), we will use local
	 * workaround below.
	 */
	(void)FUNC5(bd);

	if (bd->bd_cyl == 0) {
		bd->bd_cyl = ((bc_sp.sp_cylsec & 0xc0) << 2) +
		    ((bc_sp.sp_cylsec & 0xff00) >> 8) + 1;
	}
	if (bd->bd_hds == 0)
		bd->bd_hds = bc_sp.sp_head + 1;
	if (bd->bd_sec == 0)
		bd->bd_sec = bc_sp.sp_cylsec & 0x3f;
	if (bd->bd_sectors == 0)
		bd->bd_sectors = (uint64_t)bd->bd_cyl * bd->bd_hds * bd->bd_sec;

	/* Still no size? use 7.961GB */
	if (bd->bd_sectors == 0)
		bd->bd_sectors = 4173824;

	FUNC1(&cdinfo, bd, bd_link);
        FUNC7("BIOS CD is cd%d\n", nbcinfo);
        nbcinfo++;
        FUNC4(nbcinfo);        /* register cd device in bcache */
        return(0);
}