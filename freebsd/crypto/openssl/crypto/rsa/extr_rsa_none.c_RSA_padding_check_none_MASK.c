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

/* Variables and functions */
 int /*<<< orphan*/  RSA_F_RSA_PADDING_CHECK_NONE ; 
 int /*<<< orphan*/  RSA_R_DATA_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC3(unsigned char *to, int tlen,
                           const unsigned char *from, int flen, int num)
{

    if (flen > tlen) {
        FUNC0(RSA_F_RSA_PADDING_CHECK_NONE, RSA_R_DATA_TOO_LARGE);
        return -1;
    }

    FUNC2(to, 0, tlen - flen);
    FUNC1(to + tlen - flen, from, flen);
    return tlen;
}