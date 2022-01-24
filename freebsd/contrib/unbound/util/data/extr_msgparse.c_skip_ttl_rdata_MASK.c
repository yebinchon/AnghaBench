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
typedef  int uint16_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(sldns_buffer* pkt) 
{
	uint16_t rdatalen;
	if(FUNC1(pkt) < 6) /* ttl + rdatalen */
		return 0;
	FUNC2(pkt, 4); /* ttl */
	rdatalen = FUNC0(pkt);
	if(FUNC1(pkt) < rdatalen)
		return 0;
	FUNC2(pkt, (ssize_t)rdatalen);
	return 1;
}