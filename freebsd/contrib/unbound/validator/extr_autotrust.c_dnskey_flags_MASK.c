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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int
FUNC2(uint16_t t, uint8_t* rdata, size_t len)
{
	uint16_t f;
	if(t != LDNS_RR_TYPE_DNSKEY)
		return 0;
	if(len < 2)
		return 0;
	FUNC0(&f, rdata, 2);
	f = FUNC1(f);
	return (int)f;
}