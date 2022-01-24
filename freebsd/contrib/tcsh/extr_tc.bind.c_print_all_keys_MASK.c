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
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ CStr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 scalar_t__* CcAltMap ; 
 scalar_t__* CcKeyMap ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
    int     prev, i;
    CStr nilstr;
    nilstr.buf = NULL;
    nilstr.len = 0;


    FUNC4("%s", FUNC0(20, 6, "Standard key bindings\n"));
    prev = 0;
    for (i = 0; i < 256; i++) {
	if (CcKeyMap[prev] == CcKeyMap[i])
	    continue;
	FUNC3(CcKeyMap, prev, i - 1);
	prev = i;
    }
    FUNC3(CcKeyMap, prev, i - 1);

    FUNC4("%s", FUNC0(20, 7, "Alternative key bindings\n"));
    prev = 0;
    for (i = 0; i < 256; i++) {
	if (CcAltMap[prev] == CcAltMap[i])
	    continue;
	FUNC3(CcAltMap, prev, i - 1);
	prev = i;
    }
    FUNC3(CcAltMap, prev, i - 1);
    FUNC4("%s", FUNC0(20, 8, "Multi-character bindings\n"));
    FUNC2(NULL);	/* print all Xkey bindings */
    FUNC4("%s", FUNC0(20, 9, "Arrow key bindings\n"));
    FUNC1(&nilstr);
}