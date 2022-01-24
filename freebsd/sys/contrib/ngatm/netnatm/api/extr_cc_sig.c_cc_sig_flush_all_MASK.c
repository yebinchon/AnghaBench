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
struct uni_msg {int dummy; } ;
struct ccsig {scalar_t__ arg1; scalar_t__ has_msg; } ;
struct ccdata {int /*<<< orphan*/  free_sigs; int /*<<< orphan*/  def_sigs; int /*<<< orphan*/  sigs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccsig*) ; 
 struct ccsig* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ccsig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (struct uni_msg*) ; 

void
FUNC4(struct ccdata *cc)
{
	struct ccsig *s;

	while ((s = FUNC1(&cc->sigs)) != NULL) {
		if (s->has_msg)
			FUNC3((struct uni_msg *)s->arg1);
		FUNC2(&cc->sigs, s, link);
		FUNC0(s);
	}
	while ((s = FUNC1(&cc->def_sigs)) != NULL) {
		if (s->has_msg)
			FUNC3((struct uni_msg *)s->arg1);
		FUNC2(&cc->def_sigs, s, link);
		FUNC0(s);
	}
	while ((s = FUNC1(&cc->free_sigs)) != NULL) {
		FUNC2(&cc->free_sigs, s, link);
		FUNC0(s);
	}
}