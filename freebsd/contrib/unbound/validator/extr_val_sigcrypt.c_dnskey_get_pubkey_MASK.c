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
struct ub_packed_rrset_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ub_packed_rrset_key*,size_t,int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static void
FUNC1(struct ub_packed_rrset_key* k, size_t idx,
	unsigned char** pk, unsigned int* pklen)
{
	uint8_t* rdata;
	size_t len;
	FUNC0(k, idx, &rdata, &len);
	if(len < 2+5) {
		*pk = NULL;
		*pklen = 0;
		return;
	}
	*pk = (unsigned char*)rdata+2+4;
	*pklen = (unsigned)len-2-4;
}