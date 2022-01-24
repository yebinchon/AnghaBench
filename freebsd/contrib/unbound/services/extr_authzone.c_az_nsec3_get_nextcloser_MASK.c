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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(uint8_t* cenm, uint8_t* qname, size_t qname_len,
	uint8_t** nx, size_t* nxlen)
{
	int celabs = FUNC0(cenm);
	int qlabs = FUNC0(qname);
	int strip = qlabs - celabs -1;
	FUNC3(FUNC2(qname, qlabs, cenm, celabs));
	*nx = qname;
	*nxlen = qname_len;
	if(strip>0)
		FUNC1(nx, nxlen, strip);
}