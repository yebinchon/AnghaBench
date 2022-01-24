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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

int
FUNC3(unsigned char *c, const unsigned char *m,
                              unsigned long long mlen, const unsigned char *n,
                              uint64_t ic, const unsigned char *k)
{
    unsigned char subkey[32];
    int           ret;

    FUNC0(subkey, n, k, NULL);
    ret = FUNC1(c, m, mlen, n + 16, ic, subkey);
    FUNC2(subkey, sizeof subkey);

    return ret;
}