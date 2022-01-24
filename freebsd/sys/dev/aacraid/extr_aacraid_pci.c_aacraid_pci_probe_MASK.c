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
struct aac_ident {int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 struct aac_ident* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct aac_ident *id;

	FUNC2(NULL, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	if ((id = FUNC0(dev)) != NULL) {
		FUNC1(dev, id->desc);
		return(BUS_PROBE_DEFAULT);
	}
	return(ENXIO);
}