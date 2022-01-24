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
struct nsec3_cached_hash {int /*<<< orphan*/  rr; int /*<<< orphan*/  nsec3; int /*<<< orphan*/  dname; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(const void* c1, const void* c2) 
{
	struct nsec3_cached_hash* h1 = (struct nsec3_cached_hash*)c1;
	struct nsec3_cached_hash* h2 = (struct nsec3_cached_hash*)c2;
	uint8_t* s1, *s2;
	size_t s1len, s2len;
	int c = FUNC4(h1->dname, h2->dname);
	if(c != 0)
		return c;
	/* compare parameters */
	/* if both malformed, its equal, robustness */
	if(FUNC1(h1->nsec3, h1->rr) !=
		FUNC1(h2->nsec3, h2->rr)) {
		if(FUNC1(h1->nsec3, h1->rr) <
			FUNC1(h2->nsec3, h2->rr))
			return -1;
		return 1;
	}
	if(FUNC2(h1->nsec3, h1->rr) !=
		FUNC2(h2->nsec3, h2->rr)) {
		if(FUNC2(h1->nsec3, h1->rr) <
			FUNC2(h2->nsec3, h2->rr))
			return -1;
		return 1;
	}
	(void)FUNC3(h1->nsec3, h1->rr, &s1, &s1len);
	(void)FUNC3(h2->nsec3, h2->rr, &s2, &s2len);
	if(s1len == 0 && s2len == 0)
		return 0;
	if(!s1) return -1;
	if(!s2) return 1;
	if(s1len != s2len) {
		if(s1len < s2len)
			return -1;
		return 1;
	}
	return FUNC0(s1, s2, s1len);
}