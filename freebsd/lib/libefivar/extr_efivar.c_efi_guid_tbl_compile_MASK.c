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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {char* uuid_str; char* name; int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,int) ; 
 TYPE_1__* guid_tbl ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ uuid_s_bad_version ; 
 scalar_t__ uuid_s_ok ; 

__attribute__((used)) static void
FUNC3(void)
{
	size_t i;
	uint32_t status;
	static int done = 0;

	if (done)
		return;
	for (i = 0; i < FUNC1(guid_tbl); i++) {
		FUNC2(guid_tbl[i].uuid_str, &guid_tbl[i].guid,
		    &status);
		/* all f's is a bad version, so ignore that error */
		if (status != uuid_s_ok && status != uuid_s_bad_version)
			FUNC0(stderr, "Can't convert %s to a uuid for %s: %d\n",
			    guid_tbl[i].uuid_str, guid_tbl[i].name, (int)status);
	}
	done = 1;
}