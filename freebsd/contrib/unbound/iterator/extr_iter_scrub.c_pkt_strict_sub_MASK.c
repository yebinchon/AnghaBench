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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(sldns_buffer* pkt, uint8_t* sname, uint8_t* dr)
{
	uint8_t buf1[LDNS_MAX_DOMAINLEN+1];
	uint8_t buf2[LDNS_MAX_DOMAINLEN+1];
	/* decompress names */
	FUNC0(pkt, buf1, sname);
	FUNC0(pkt, buf2, dr);
	return FUNC1(buf1, buf2);
}