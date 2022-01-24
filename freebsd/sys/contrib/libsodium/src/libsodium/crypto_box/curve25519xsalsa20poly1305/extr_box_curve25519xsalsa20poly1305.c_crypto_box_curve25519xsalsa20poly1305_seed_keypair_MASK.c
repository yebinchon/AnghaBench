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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,int) ; 
 int FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 

int
FUNC4(unsigned char *pk,
                                                   unsigned char *sk,
                                                   const unsigned char *seed)
{
    unsigned char hash[64];

    FUNC0(hash, seed, 32);
    FUNC2(sk, hash, 32);
    FUNC3(hash, sizeof hash);

    return FUNC1(pk, sk);
}