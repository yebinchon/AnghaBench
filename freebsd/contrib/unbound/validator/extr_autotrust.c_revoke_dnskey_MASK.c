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
struct autr_ta {int /*<<< orphan*/  dname_len; int /*<<< orphan*/  rr_len; int /*<<< orphan*/  rr; } ;

/* Variables and functions */
 int LDNS_KEY_REVOKE_KEY ; 
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(struct autr_ta* ta, int off)
{
	uint16_t flags;
	uint8_t* data;
	if(FUNC3(ta->rr, ta->rr_len, ta->dname_len) !=
		LDNS_RR_TYPE_DNSKEY)
		return;
	if(FUNC2(ta->rr, ta->rr_len, ta->dname_len) < 2)
		return;
	data = FUNC1(ta->rr, ta->rr_len, ta->dname_len);
	flags = FUNC0(data);
	if (off && (flags&LDNS_KEY_REVOKE_KEY))
		flags ^= LDNS_KEY_REVOKE_KEY; /* flip */
	else
		flags |= LDNS_KEY_REVOKE_KEY;
	FUNC4(data, flags);
}