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
struct tag {int dummy; } ;
struct roff_meta {int /*<<< orphan*/ * msec; int /*<<< orphan*/  title; int /*<<< orphan*/ * arch; int /*<<< orphan*/  vol; } ;
struct html {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TAG_TABLE ; 
 int /*<<< orphan*/  TAG_TD ; 
 int /*<<< orphan*/  TAG_TR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 struct tag* FUNC3 (struct html*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct html*,struct tag*) ; 
 int /*<<< orphan*/  FUNC5 (struct html*,struct tag*) ; 
 int /*<<< orphan*/  FUNC6 (struct html*,char*) ; 

__attribute__((used)) static int
FUNC7(const struct roff_meta *meta, struct html *h)
{
	struct tag	*t, *tt;
	char		*volume, *title;

	if (NULL == meta->arch)
		volume = FUNC2(meta->vol);
	else
		FUNC1(&volume, "%s (%s)",
		    meta->vol, meta->arch);

	if (NULL == meta->msec)
		title = FUNC2(meta->title);
	else
		FUNC1(&title, "%s(%s)",
		    meta->title, meta->msec);

	t = FUNC3(h, TAG_TABLE, "c", "head");
	tt = FUNC3(h, TAG_TR, "");

	FUNC3(h, TAG_TD, "c", "head-ltitle");
	FUNC6(h, title);
	FUNC4(h, tt);

	FUNC3(h, TAG_TD, "c", "head-vol");
	FUNC6(h, volume);
	FUNC4(h, tt);

	FUNC3(h, TAG_TD, "c", "head-rtitle");
	FUNC6(h, title);
	FUNC5(h, t);

	FUNC0(title);
	FUNC0(volume);
	return 1;
}