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
struct TYPE_3__ {char* dv_name; } ;
typedef  int /*<<< orphan*/ * EFI_HANDLE ;
typedef  char CHAR16 ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ efinet_dev ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC6(int verbose)
{
	CHAR16 *text;
	EFI_HANDLE h;
	int unit, ret = 0;

	FUNC5("%s devices:", efinet_dev.dv_name);
	if ((ret = FUNC4("\n")) != 0)
		return (ret);

	for (unit = 0, h = FUNC1(&efinet_dev, 0);
	    h != NULL; h = FUNC1(&efinet_dev, ++unit)) {
		FUNC5("    %s%d:", efinet_dev.dv_name, unit);
		if (verbose) {
			text = FUNC0(FUNC3(h));
			if (text != NULL) {
				FUNC5("    %S", text);
				FUNC2(text);
			}
		}
		if ((ret = FUNC4("\n")) != 0)
			break;
	}
	return (ret);
}