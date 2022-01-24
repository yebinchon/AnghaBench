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
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

int 
FUNC3(sldns_buffer* pkt, uint8_t* dname)
{
	uint8_t lablen;

	if(FUNC0(pkt) < 1)
		return 0;
	lablen = *dname++;
	FUNC2(pkt, lablen);
	while(lablen) {
		if(FUNC0(pkt) < (size_t)lablen+1)
			return 0;
		FUNC1(pkt, dname, lablen);
		dname += lablen;
		lablen = *dname++;
		FUNC2(pkt, lablen);
	}
	return 1;
}