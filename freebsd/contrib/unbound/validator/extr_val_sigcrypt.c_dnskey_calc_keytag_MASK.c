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
typedef  int /*<<< orphan*/  uint16_t ;
struct ub_packed_rrset_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ub_packed_rrset_key*,size_t,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 

uint16_t 
FUNC2(struct ub_packed_rrset_key* dnskey_rrset, size_t dnskey_idx)
{
	uint8_t* data;
	size_t len;
	FUNC0(dnskey_rrset, dnskey_idx, &data, &len);
	/* do not pass rdatalen to ldns */
	return FUNC1(data+2, len-2);
}