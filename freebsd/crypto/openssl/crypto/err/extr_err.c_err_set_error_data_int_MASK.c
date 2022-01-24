#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int top; char** err_data; int* err_data_flags; } ;
typedef  TYPE_1__ ERR_STATE ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(char *data, int flags)
{
    ERR_STATE *es;
    int i;

    es = FUNC0();
    if (es == NULL)
        return 0;

    i = es->top;

    FUNC1(es, i);
    es->err_data[i] = data;
    es->err_data_flags[i] = flags;

    return 1;
}