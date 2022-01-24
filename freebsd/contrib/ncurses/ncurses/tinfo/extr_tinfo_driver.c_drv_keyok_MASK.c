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
struct TYPE_2__ {int /*<<< orphan*/  _key_ok; int /*<<< orphan*/  _keytry; } ;
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;
typedef  TYPE_1__ SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ERR ; 
 int OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,unsigned int,int*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(TERMINAL_CONTROL_BLOCK * TCB, int c, int flag)
{
    SCREEN *sp;
    int code = ERR;
    int count = 0;
    char *s;

    FUNC0();
    FUNC1();

    if (c >= 0) {
	unsigned ch = (unsigned) c;
	if (flag) {
	    while ((s = FUNC3(sp->_key_ok,
				       ch, &count, (size_t) 0)) != 0
		   && FUNC4(&(sp->_key_ok), ch)) {
		code = FUNC2(&(sp->_keytry), s, ch);
		FUNC5(s);
		count = 0;
		if (code != OK)
		    break;
	    }
	} else {
	    while ((s = FUNC3(sp->_keytry,
				       ch, &count, (size_t) 0)) != 0
		   && FUNC4(&(sp->_keytry), ch)) {
		code = FUNC2(&(sp->_key_ok), s, ch);
		FUNC5(s);
		count = 0;
		if (code != OK)
		    break;
	    }
	}
    }
    return (code);
}