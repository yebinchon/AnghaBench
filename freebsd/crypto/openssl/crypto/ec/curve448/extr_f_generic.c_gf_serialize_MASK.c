#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  TYPE_1__* gf ;
typedef  unsigned int dword_t ;
struct TYPE_7__ {scalar_t__* limb; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (size_t) ; 
 unsigned int NLIMBS ; 
 int SER_BYTES ; 
 int X_SER_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__* const) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(uint8_t serial[SER_BYTES], const gf x, int with_hibit)
{
    unsigned int j = 0, fill = 0;
    dword_t buffer = 0;
    int i;
    gf red;

    FUNC3(red, x);
    FUNC5(red);
    if (!with_hibit)
        FUNC2(FUNC4(red) == 0);

    for (i = 0; i < (with_hibit ? X_SER_BYTES : SER_BYTES); i++) {
        if (fill < 8 && j < NLIMBS) {
            buffer |= ((dword_t) red->limb[FUNC0(j)]) << fill;
            fill += FUNC1(FUNC0(j));
            j++;
        }
        serial[i] = (uint8_t)buffer;
        fill -= 8;
        buffer >>= 8;
    }
}