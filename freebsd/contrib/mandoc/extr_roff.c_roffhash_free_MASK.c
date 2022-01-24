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
struct roffreq {int dummy; } ;
typedef  struct roffreq ohash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct roffreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct roffreq*) ; 
 struct roffreq* FUNC2 (struct roffreq*,unsigned int*) ; 
 struct roffreq* FUNC3 (struct roffreq*,unsigned int*) ; 

void
FUNC4(struct ohash *htab)
{
	struct roffreq	*req;
	unsigned int	 slot;

	if (htab == NULL)
		return;
	for (req = FUNC2(htab, &slot); req != NULL;
	     req = FUNC3(htab, &slot))
		FUNC0(req);
	FUNC1(htab);
	FUNC0(htab);
}