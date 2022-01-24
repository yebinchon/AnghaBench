#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int rounds; TYPE_1__* rd_key; } ;
struct TYPE_5__ {int* u; } ;
typedef  TYPE_1__ ARIA_u128 ;
typedef  TYPE_2__ ARIA_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int FUNC3 (unsigned char const*,int) ; 
 size_t FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int) ; 
 scalar_t__* S1 ; 
 scalar_t__* S2 ; 
 scalar_t__* X1 ; 
 int* X2 ; 

void FUNC7(const unsigned char *in, unsigned char *out,
                  const ARIA_KEY *key)
{
    register uint32_t reg0, reg1, reg2, reg3;
    int Nr;
    const ARIA_u128 *rk;

    if (in == NULL || out == NULL || key == NULL) {
        return;
    }

    rk = key->rd_key;
    Nr = key->rounds;

    if (Nr != 12 && Nr != 14 && Nr != 16) {
        return;
    }

    reg0 = FUNC3(in, 0);
    reg1 = FUNC3(in, 1);
    reg2 = FUNC3(in, 2);
    reg3 = FUNC3(in, 3);

    FUNC0(rk, reg0, reg1, reg2, reg3);
    rk++;

    FUNC2(reg0, reg1, reg2, reg3);
    FUNC0(rk, reg0, reg1, reg2, reg3);
    rk++;

    while(Nr -= 2){
        FUNC1(reg0, reg1, reg2, reg3);
        FUNC0(rk, reg0, reg1, reg2, reg3);
        rk++;

        FUNC2(reg0, reg1, reg2, reg3);
        FUNC0(rk, reg0, reg1, reg2, reg3);
        rk++;
    }

    reg0 = rk->u[0] ^ FUNC5(
        (uint8_t)(X1[FUNC4(reg0, 0)]     ),
        (uint8_t)(X2[FUNC4(reg0, 1)] >> 8),
        (uint8_t)(S1[FUNC4(reg0, 2)]     ),
        (uint8_t)(S2[FUNC4(reg0, 3)]     ));
    reg1 = rk->u[1] ^ FUNC5(
        (uint8_t)(X1[FUNC4(reg1, 0)]     ),
        (uint8_t)(X2[FUNC4(reg1, 1)] >> 8),
        (uint8_t)(S1[FUNC4(reg1, 2)]     ),
        (uint8_t)(S2[FUNC4(reg1, 3)]     ));
    reg2 = rk->u[2] ^ FUNC5(
        (uint8_t)(X1[FUNC4(reg2, 0)]     ),
        (uint8_t)(X2[FUNC4(reg2, 1)] >> 8),
        (uint8_t)(S1[FUNC4(reg2, 2)]     ),
        (uint8_t)(S2[FUNC4(reg2, 3)]     ));
    reg3 = rk->u[3] ^ FUNC5(
        (uint8_t)(X1[FUNC4(reg3, 0)]     ),
        (uint8_t)(X2[FUNC4(reg3, 1)] >> 8),
        (uint8_t)(S1[FUNC4(reg3, 2)]     ),
        (uint8_t)(S2[FUNC4(reg3, 3)]     ));

    FUNC6(out, 0, reg0);
    FUNC6(out, 1, reg1);
    FUNC6(out, 2, reg2);
    FUNC6(out, 3, reg3);
}