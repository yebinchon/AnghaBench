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
struct ctl_be_ramdisk_softc {int /*<<< orphan*/  lun_list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_be_ramdisk_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ctl_be_ramdisk_softc rd_softc ; 

__attribute__((used)) static int
FUNC3(void)
{
	struct ctl_be_ramdisk_softc *softc = &rd_softc;

	FUNC1(softc, 0, sizeof(*softc));
	FUNC2(&softc->lock, "ctlramdisk", NULL, MTX_DEF);
	FUNC0(&softc->lun_list);
	return (0);
}