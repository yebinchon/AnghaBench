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
typedef  int uint64_t ;
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char const**,int*) ; 

__attribute__((used)) static int
FUNC1(const unsigned char **xdr, uint64_t *lp)
{
	u_int hi, lo;

	FUNC0(xdr, &hi);
	FUNC0(xdr, &lo);
	*lp = (((uint64_t) hi) << 32) | lo;
	return (0);
}