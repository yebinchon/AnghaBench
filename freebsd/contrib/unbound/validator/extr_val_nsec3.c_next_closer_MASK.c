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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,size_t*,int) ; 

__attribute__((used)) static void
FUNC2(uint8_t* qname, size_t qnamelen, uint8_t* ce, 
	uint8_t** nm, size_t* nmlen)
{
	int strip = FUNC0(qname) - FUNC0(ce) -1;
	*nm = qname;
	*nmlen = qnamelen;
	if(strip>0)
		FUNC1(nm, nmlen, strip);
}