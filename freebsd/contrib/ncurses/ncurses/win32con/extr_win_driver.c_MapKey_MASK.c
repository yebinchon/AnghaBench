#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  keylist ;
typedef  int WORD ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;
typedef  int /*<<< orphan*/  LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FKEYS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ N_INI ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keycompare ; 

__attribute__((used)) static int
FUNC5(TERMINAL_CONTROL_BLOCK * TCB, WORD vKey)
{
    WORD nKey = 0;
    void *res;
    LONG key = FUNC1(vKey, 0);
    int code = -1;

    FUNC0();

    res = FUNC4(&key,
		  FUNC3(TCB)->map,
		  (size_t) (N_INI + FKEYS),
		  sizeof(keylist[0]),
		  keycompare);
    if (res) {
	key = *((LONG *) res);
	nKey = FUNC2(key);
	code = (int) (nKey & 0x7fff);
	if (nKey & 0x8000)
	    code = -code;
    }
    return code;
}