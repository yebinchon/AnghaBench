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
struct rrset_parse {size_t dname_len; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 size_t LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rrset_parse*,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static int 
FUNC3(uint8_t* qname, size_t qnamelen, struct rrset_parse* dname_rrset, 
	uint8_t* alias, size_t* aliaslen, sldns_buffer* pkt)
{
	/* we already know that sname is a strict subdomain of DNAME owner */
	uint8_t* dtarg = NULL;
	size_t dtarglen;
	if(!FUNC2(dname_rrset, &dtarg, &dtarglen))
		return 0; 
	FUNC1(qnamelen > dname_rrset->dname_len);
	/* DNAME from com. to net. with qname example.com. -> example.net. */
	/* so: \3com\0 to \3net\0 and qname \7example\3com\0 */
	*aliaslen = qnamelen + dtarglen - dname_rrset->dname_len;
	if(*aliaslen > LDNS_MAX_DOMAINLEN)
		return 0; /* should have been RCODE YXDOMAIN */
	/* decompress dnames into buffer, we know it fits */
	FUNC0(pkt, alias, qname);
	FUNC0(pkt, alias+(qnamelen-dname_rrset->dname_len), dtarg);
	return 1;
}