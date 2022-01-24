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
struct roff_meta {int /*<<< orphan*/  title; int /*<<< orphan*/ * arch; int /*<<< orphan*/ * msec; } ;
struct html {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAG_TITLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct html*) ; 
 int /*<<< orphan*/  FUNC4 (struct html*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct html*,char*) ; 

__attribute__((used)) static void
FUNC6(const struct roff_meta *meta, struct html *h)
{
	char	*cp;

	FUNC3(h);

	if (meta->arch != NULL && meta->msec != NULL)
		FUNC1(&cp, "%s(%s) (%s)", meta->title,
		    meta->msec, meta->arch);
	else if (meta->msec != NULL)
		FUNC1(&cp, "%s(%s)", meta->title, meta->msec);
	else if (meta->arch != NULL)
		FUNC1(&cp, "%s (%s)", meta->title, meta->arch);
	else
		cp = FUNC2(meta->title);

	FUNC4(h, TAG_TITLE, "");
	FUNC5(h, cp);
	FUNC0(cp);
}