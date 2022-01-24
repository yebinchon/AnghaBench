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
typedef  size_t addrlen_t ;
typedef  size_t addrkey_t ;

/* Variables and functions */
 size_t KEYWIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int 
FUNC1(const addrkey_t *addr, addrlen_t addrlen, addrlen_t n)
{
	FUNC0(addrlen > n);
	(void)addrlen;
	return (int)(addr[n/KEYWIDTH]>>((KEYWIDTH-1)-(n%KEYWIDTH))) & 1;
}