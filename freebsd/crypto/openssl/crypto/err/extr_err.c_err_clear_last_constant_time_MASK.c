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
struct TYPE_3__ {int top; int* err_flags; } ;
typedef  TYPE_1__ ERR_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_FLAG_CLEAR ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(int clear)
{
    ERR_STATE *es;
    int top;

    es = FUNC0();
    if (es == NULL)
        return;

    top = es->top;

    /*
     * Flag error as cleared but remove it elsewhere to avoid two errors
     * accessing the same error stack location, revealing timing information.
     */
    clear = FUNC2(FUNC1(clear, 0),
                                     0, ERR_FLAG_CLEAR);
    es->err_flags[top] |= clear;
}