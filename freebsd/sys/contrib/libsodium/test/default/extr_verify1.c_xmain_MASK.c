#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned char uint8_t ;
typedef  unsigned int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,unsigned char*) ; 
 unsigned int FUNC2 () ; 
 int FUNC3 (unsigned char*,unsigned char*) ; 
 unsigned int FUNC4 () ; 
 int FUNC5 (unsigned char*,unsigned char*) ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int) ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 scalar_t__ FUNC12 (int) ; 
 int FUNC13 (unsigned char*,unsigned char*,int) ; 

int
FUNC14(void)
{
    unsigned char *v16, *v16x;
    unsigned char *v32, *v32x;
    unsigned char *v64, *v64x;
    uint32_t       r;
    uint8_t        o;
    int            i;

    v16  = (unsigned char *) FUNC12(16);
    v16x = (unsigned char *) FUNC12(16);
    v32  = (unsigned char *) FUNC12(32);
    v32x = (unsigned char *) FUNC12(32);
    v64  = (unsigned char *) FUNC12(64);
    v64x = (unsigned char *) FUNC12(64);
    for (i = 0; i < 10000; i++) {
        FUNC9(v16, 16);
        FUNC9(v32, 32);
        FUNC9(v64, 64);

        FUNC7(v16x, v16, 16);
        FUNC7(v32x, v32, 32);
        FUNC7(v64x, v64, 64);

        if (FUNC1(v16, v16x) != 0 ||
            FUNC3(v32, v32x) != 0 ||
            FUNC5(v64, v64x) != 0 ||
            FUNC13(v16, v16x, 16) != 0 ||
            FUNC13(v32, v32x, 32) != 0 ||
            FUNC13(v64, v64x, 64) != 0) {
            FUNC8("Failed\n");
        }
    }
    FUNC8("OK\n");

    for (i = 0; i < 100000; i++) {
        r = FUNC10();
        o = (uint8_t) FUNC10();
        if (o == 0) {
            continue;
        }
        v16x[r & 15U] ^= o;
        v32x[r & 31U] ^= o;
        v64x[r & 63U] ^= o;
        if (FUNC1(v16, v16x) != -1 ||
            FUNC3(v32, v32x) != -1 ||
            FUNC5(v64, v64x) != -1 ||
            FUNC13(v16, v16x, 16) != -1 ||
            FUNC13(v32, v32x, 32) != -1 ||
            FUNC13(v64, v64x, 64) != -1) {
            FUNC8("Failed\n");
        }
        v16x[r & 15U] ^= o;
        v32x[r & 31U] ^= o;
        v64x[r & 63U] ^= o;
    }
    FUNC8("OK\n");

    FUNC0(FUNC2() == 16U);
    FUNC0(FUNC4() == 32U);
    FUNC0(FUNC6() == 64U);

    FUNC11(v16);
    FUNC11(v16x);
    FUNC11(v32);
    FUNC11(v32x);
    FUNC11(v64);
    FUNC11(v64x);

    return 0;
}