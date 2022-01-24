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
struct trust_anchor {size_t numDS; int /*<<< orphan*/  ds_rrset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static size_t
FUNC2(struct trust_anchor* ta)
{
	size_t i, num = 0;
	for(i=0; i<ta->numDS; i++) {
		if(!FUNC0(ta->ds_rrset, i) || 
			!FUNC1(ta->ds_rrset, i))
			num++;
	}
	return num;
}