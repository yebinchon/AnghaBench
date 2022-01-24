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
struct algo_needs {int* needs; size_t num; } ;

/* Variables and functions */
 int ALGO_NEEDS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (struct ub_packed_rrset_key*) ; 

void FUNC6(struct algo_needs* n, struct ub_packed_rrset_key* ds,
	int fav_ds_algo, uint8_t* sigalg)
{
	uint8_t algo;
	size_t i, total = 0;
	size_t num = FUNC5(ds);

	FUNC4(n->needs, 0, sizeof(uint8_t)*ALGO_NEEDS_MAX);
	for(i=0; i<num; i++) {
		if(FUNC1(ds, i) != fav_ds_algo)
			continue;
		algo = (uint8_t)FUNC2(ds, i);
		if(!FUNC0((int)algo))
			continue;
		FUNC3(algo != 0); /* we do not support 0 and is EOS */
		if(n->needs[algo] == 0) {
			n->needs[algo] = 1;
			sigalg[total] = algo;		
			total++;
		}
	}
	sigalg[total] = 0;
	n->num = total;
}