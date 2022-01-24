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
struct disk {scalar_t__ d_drv1; } ;
struct aac_disk {int /*<<< orphan*/  ad_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_DISK_OPEN ; 
 int ENXIO ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC1(struct disk *dp)
{
	struct aac_disk	*sc;

	FUNC0(NULL, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	sc = (struct aac_disk *)dp->d_drv1;
	
	if (sc == NULL)
		return (ENXIO);

	sc->ad_flags &= ~AAC_DISK_OPEN;
	return (0);
}