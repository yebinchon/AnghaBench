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
struct TYPE_2__ {int /*<<< orphan*/  rmap; } ;
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;
typedef  int /*<<< orphan*/  SCREEN ;
typedef  int /*<<< orphan*/  LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FALSE ; 
 scalar_t__ FKEYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ N_INI ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  rkeycompare ; 

__attribute__((used)) static bool
FUNC9(TERMINAL_CONTROL_BLOCK * TCB, int keycode)
{
    SCREEN *sp;
    WORD nKey;
    void *res;
    bool found = FALSE;
    LONG key = FUNC1(0, (WORD) keycode);

    FUNC0();
    FUNC4();

    FUNC0();

    FUNC5((FUNC6("win32con::drv_kyExist(%p, %d)"), TCB, keycode));
    res = FUNC7(&key,
		  FUNC3(TCB)->rmap,
		  (size_t) (N_INI + FKEYS),
		  sizeof(keylist[0]),
		  rkeycompare);
    if (res) {
	key = *((LONG *) res);
	nKey = FUNC2(key);
	if (!(nKey & 0x8000))
	    found = TRUE;
    }
    FUNC8(found);
}