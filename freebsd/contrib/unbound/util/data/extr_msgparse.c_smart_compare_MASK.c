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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(sldns_buffer* pkt, uint8_t* dnow, 
	uint8_t* dprfirst, uint8_t* dprlast)
{
	if(FUNC0(*dnow)) {
		/* ptr points to a previous dname */
		uint8_t* p = FUNC3(pkt, FUNC1(dnow[0], dnow[1]));
		if( p == dprfirst || p == dprlast )
			return 0;
		/* prev dname is also a ptr, both ptrs are the same. */
		if(FUNC0(*dprlast) &&
			dprlast[0] == dnow[0] && dprlast[1] == dnow[1])
			return 0;
	}
	return FUNC2(pkt, dnow, dprlast);
}