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
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ibmp ; 
 int /*<<< orphan*/ * FUNC0 (void*,int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

uint8_t *FUNC1(void *rcvbuf, ib_portid_t * portid, unsigned attrid,
		   unsigned mod, unsigned timeout)
{
	return FUNC0(rcvbuf, portid, attrid, mod, timeout, ibmp);
}