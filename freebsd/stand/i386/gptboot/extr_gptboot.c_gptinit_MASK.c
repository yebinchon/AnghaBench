#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  secbuf; } ;
struct TYPE_8__ {int /*<<< orphan*/  unit; int /*<<< orphan*/  part; } ;
struct TYPE_9__ {int /*<<< orphan*/ * gdev; TYPE_2__ dsk; } ;
struct TYPE_7__ {scalar_t__ ent_lba_start; scalar_t__ ent_lba_end; } ;

/* Variables and functions */
 char* BOOTPROG ; 
 size_t curent ; 
 TYPE_6__* dmadat ; 
 scalar_t__ dsk_meta ; 
 int /*<<< orphan*/  freebsd_ufs_uuid ; 
 TYPE_5__ gdsk ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  gelipw ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* gpttable ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  vdev_read ; 

__attribute__((used)) static int
FUNC6(void)
{

	if (FUNC4(&gdsk.dsk, dmadat->secbuf) == -1) {
		FUNC5("%s: unable to load GPT\n", BOOTPROG);
		return (-1);
	}
	if (FUNC3(&freebsd_ufs_uuid, &gdsk.dsk, gdsk.dsk.part) == -1) {
		FUNC5("%s: no UFS partition was found\n", BOOTPROG);
		return (-1);
	}
#ifdef LOADER_GELI_SUPPORT
	gdsk.gdev = geli_taste(vdev_read, &gdsk.dsk, 
	    (gpttable[curent].ent_lba_end - gpttable[curent].ent_lba_start),
	    "disk%up%u:", gdsk.dsk.unit, curent + 1);
	if (gdsk.gdev != NULL) {
		if (geli_havekey(gdsk.gdev) != 0 &&
		    geli_passphrase(gdsk.gdev, gelipw) != 0) {
			printf("%s: unable to decrypt GELI key\n", BOOTPROG);
			return (-1);
		}
	}
#endif

	dsk_meta = 0;
	return (0);
}