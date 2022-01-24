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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(sldns_buffer* pkt, uint8_t* here, uint16_t* type)
{
	size_t pos = FUNC1(pkt);
	FUNC4(pkt, (size_t)(here-FUNC0(pkt)));
	/* ttl + len + size of small rrsig(rootlabel, no signature) */
	if(FUNC3(pkt) < 4+2+19)
		return 0;
	FUNC5(pkt, 4); /* ttl */
	if(FUNC2(pkt) < 19) /* too short */ {
		FUNC4(pkt, pos);
		return 0;
	}
	*type = FUNC2(pkt);
	FUNC4(pkt, pos);
	return 1;
}