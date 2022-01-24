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
typedef  size_t uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct algo_needs {size_t num; int* needs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 size_t FUNC2 (struct ub_packed_rrset_key*) ; 

void FUNC3(struct algo_needs* n,
        struct ub_packed_rrset_key* dnskey, uint8_t* sigalg)
{
	uint8_t algo;
	size_t i, total = n->num;
	size_t num = FUNC2(dnskey);

	for(i=0; i<num; i++) {
		algo = (uint8_t)FUNC1(dnskey, i);
		if(!FUNC0((int)algo))
			continue;
		if(n->needs[algo] == 0) {
			n->needs[algo] = 1;
			sigalg[total] = algo;
			total++;
		}
	}
	sigalg[total] = 0;
	n->num = total;
}