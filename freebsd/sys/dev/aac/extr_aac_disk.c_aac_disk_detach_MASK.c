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
struct aac_disk {int ad_flags; int /*<<< orphan*/  ad_disk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AAC_DISK_OPEN ; 
 int EBUSY ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct aac_disk *sc;

	sc = (struct aac_disk *)FUNC0(dev);
	FUNC2(NULL, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	if (sc->ad_flags & AAC_DISK_OPEN)
		return(EBUSY);

	FUNC1(sc->ad_disk);

	return(0);
}