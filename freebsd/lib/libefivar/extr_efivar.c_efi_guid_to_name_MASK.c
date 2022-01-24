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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 TYPE_1__* guid_tbl ; 
 size_t FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(efi_guid_t *guid, char **name)
{
	size_t i;
	uint32_t status;

	FUNC0();
	for (i = 0; i < FUNC2(guid_tbl); i++) {
		if (FUNC4(guid, &guid_tbl[i].guid, &status)) {
			*name = FUNC3(guid_tbl[i].name);
			return (0);
		}
	}
	return (FUNC1(guid, name));
}