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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 size_t LDNS_MAX_DOMAINLEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t*,int) ; 

uint8_t* FUNC3(uint8_t* d1, uint8_t* d2)
{
	int labs1, labs2, m;
	size_t len = LDNS_MAX_DOMAINLEN;
	labs1 = FUNC0(d1);
	labs2 = FUNC0(d2);
	(void)FUNC1(d1, labs1, d2, labs2, &m);
	FUNC2(&d1, &len, labs1-m);
	return d1;
}