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
typedef  int /*<<< orphan*/  largefelem ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC4(felem out, const felem in)
{
    felem ftmp, ftmp2, ftmp3, ftmp4;
    largefelem tmp;
    unsigned i;

    FUNC3(tmp, in);
    FUNC2(ftmp, tmp);    /* 2^1 */
    FUNC1(tmp, in, ftmp);
    FUNC2(ftmp, tmp);    /* 2^2 - 2^0 */
    FUNC0(ftmp2, ftmp);
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^3 - 2^1 */
    FUNC1(tmp, in, ftmp);
    FUNC2(ftmp, tmp);    /* 2^3 - 2^0 */
    FUNC3(tmp, ftmp);
    FUNC2(ftmp, tmp);    /* 2^4 - 2^1 */

    FUNC3(tmp, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^3 - 2^1 */
    FUNC3(tmp, ftmp3);
    FUNC2(ftmp3, tmp);   /* 2^4 - 2^2 */
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^4 - 2^0 */

    FUNC0(ftmp2, ftmp3);
    FUNC3(tmp, ftmp3);
    FUNC2(ftmp3, tmp);   /* 2^5 - 2^1 */
    FUNC3(tmp, ftmp3);
    FUNC2(ftmp3, tmp);   /* 2^6 - 2^2 */
    FUNC3(tmp, ftmp3);
    FUNC2(ftmp3, tmp);   /* 2^7 - 2^3 */
    FUNC3(tmp, ftmp3);
    FUNC2(ftmp3, tmp);   /* 2^8 - 2^4 */
    FUNC0(ftmp4, ftmp3);
    FUNC1(tmp, ftmp3, ftmp);
    FUNC2(ftmp4, tmp);   /* 2^8 - 2^1 */
    FUNC3(tmp, ftmp4);
    FUNC2(ftmp4, tmp);   /* 2^9 - 2^2 */
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^8 - 2^0 */
    FUNC0(ftmp2, ftmp3);

    for (i = 0; i < 8; i++) {
        FUNC3(tmp, ftmp3);
        FUNC2(ftmp3, tmp); /* 2^16 - 2^8 */
    }
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^16 - 2^0 */
    FUNC0(ftmp2, ftmp3);

    for (i = 0; i < 16; i++) {
        FUNC3(tmp, ftmp3);
        FUNC2(ftmp3, tmp); /* 2^32 - 2^16 */
    }
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^32 - 2^0 */
    FUNC0(ftmp2, ftmp3);

    for (i = 0; i < 32; i++) {
        FUNC3(tmp, ftmp3);
        FUNC2(ftmp3, tmp); /* 2^64 - 2^32 */
    }
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^64 - 2^0 */
    FUNC0(ftmp2, ftmp3);

    for (i = 0; i < 64; i++) {
        FUNC3(tmp, ftmp3);
        FUNC2(ftmp3, tmp); /* 2^128 - 2^64 */
    }
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^128 - 2^0 */
    FUNC0(ftmp2, ftmp3);

    for (i = 0; i < 128; i++) {
        FUNC3(tmp, ftmp3);
        FUNC2(ftmp3, tmp); /* 2^256 - 2^128 */
    }
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^256 - 2^0 */
    FUNC0(ftmp2, ftmp3);

    for (i = 0; i < 256; i++) {
        FUNC3(tmp, ftmp3);
        FUNC2(ftmp3, tmp); /* 2^512 - 2^256 */
    }
    FUNC1(tmp, ftmp3, ftmp2);
    FUNC2(ftmp3, tmp);   /* 2^512 - 2^0 */

    for (i = 0; i < 9; i++) {
        FUNC3(tmp, ftmp3);
        FUNC2(ftmp3, tmp); /* 2^521 - 2^9 */
    }
    FUNC1(tmp, ftmp3, ftmp4);
    FUNC2(ftmp3, tmp);   /* 2^512 - 2^2 */
    FUNC1(tmp, ftmp3, in);
    FUNC2(out, tmp);     /* 2^512 - 3 */
}