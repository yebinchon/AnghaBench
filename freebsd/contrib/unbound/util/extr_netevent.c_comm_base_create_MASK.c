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
struct internal_base {int /*<<< orphan*/  base; struct internal_base* eb; int /*<<< orphan*/  now; int /*<<< orphan*/  secs; } ;
struct comm_base {int /*<<< orphan*/  base; struct comm_base* eb; int /*<<< orphan*/  now; int /*<<< orphan*/  secs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct internal_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct internal_base*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const**,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 

struct comm_base* 
FUNC6(int sigs)
{
	struct comm_base* b = (struct comm_base*)FUNC0(1,
		sizeof(struct comm_base));
	const char *evnm="event", *evsys="", *evmethod="";

	if(!b)
		return NULL;
	b->eb = (struct internal_base*)FUNC0(1, sizeof(struct internal_base));
	if(!b->eb) {
		FUNC1(b);
		return NULL;
	}
	b->eb->base = FUNC3(sigs, &b->eb->secs, &b->eb->now);
	if(!b->eb->base) {
		FUNC1(b->eb);
		FUNC1(b);
		return NULL;
	}
	FUNC2(b);
	FUNC4(b->eb->base, &evnm, &evsys, &evmethod);
	FUNC5(VERB_ALGO, "%s %s uses %s method.", evnm, evsys, evmethod);
	return b;
}