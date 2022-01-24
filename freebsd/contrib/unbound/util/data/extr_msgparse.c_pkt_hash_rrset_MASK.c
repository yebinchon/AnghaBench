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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int hashvalue_type ;
typedef  int /*<<< orphan*/  dclass ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 

hashvalue_type
FUNC2(sldns_buffer* pkt, uint8_t* dname, uint16_t type, 
	uint16_t dclass, uint32_t rrset_flags)
{
	/* note this MUST be identical to rrset_key_hash in packed_rrset.c */
	/* this routine handles compressed names */
	hashvalue_type h = 0xab;
	h = FUNC0(pkt, dname, h);
	h = FUNC1(&type, sizeof(type), h);		/* host order */
	h = FUNC1(&dclass, sizeof(dclass), h);	/* netw order */
	h = FUNC1(&rrset_flags, sizeof(uint32_t), h);
	return h;
}