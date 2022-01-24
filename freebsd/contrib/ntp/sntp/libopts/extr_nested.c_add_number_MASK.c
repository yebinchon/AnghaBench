#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ longVal; } ;
struct TYPE_7__ {char* pzName; int /*<<< orphan*/  valType; TYPE_1__ v; } ;
typedef  TYPE_2__ tOptionValue ;

/* Variables and functions */
 TYPE_2__* FUNC0 (size_t,char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 char NUL ; 
 int /*<<< orphan*/  OPARG_TYPE_NUMERIC ; 
 int /*<<< orphan*/  FUNC2 (void**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tOptionValue *
FUNC5(void ** pp, char const * name, size_t nm_len,
           char const * val, size_t d_len)
{
    size_t sz = nm_len + sizeof(tOptionValue) + 1;
    tOptionValue * new_val = FUNC0(sz, "int val");

    /*
     * Scan over whitespace is constrained by "d_len"
     */
    while (FUNC1(*val) && (d_len > 0)) {
        d_len--; val++;
    }
    if (d_len == 0)
        new_val->v.longVal = 0;
    else
        new_val->v.longVal = FUNC4(val, 0, 0);

    new_val->valType = OPARG_TYPE_NUMERIC;
    new_val->pzName  = (char *)(new_val + 1);
    FUNC3(new_val->pzName, name, nm_len);
    new_val->pzName[ nm_len ] = NUL;
    FUNC2(pp, new_val);
    return new_val;
}