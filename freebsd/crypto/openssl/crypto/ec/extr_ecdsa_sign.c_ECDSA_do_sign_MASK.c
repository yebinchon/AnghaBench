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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  ECDSA_SIG ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ECDSA_SIG *FUNC1(const unsigned char *dgst, int dlen, EC_KEY *eckey)
{
    return FUNC0(dgst, dlen, NULL, NULL, eckey);
}