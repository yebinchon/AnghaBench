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
struct match_list {int dummy; } ;
struct match {int /*<<< orphan*/  pattern; } ;
struct archive_match {int /*<<< orphan*/  setflag; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ID_IS_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 struct match* FUNC2 (int,int) ; 
 int FUNC3 (struct archive_match*) ; 
 int /*<<< orphan*/  FUNC4 (struct match_list*,struct match*) ; 

__attribute__((used)) static int
FUNC5(struct archive_match *a, struct match_list *list,
    int mbs, const void *name)
{
	struct match *match;

	match = FUNC2(1, sizeof(*match));
	if (match == NULL)
		return (FUNC3(a));
	if (mbs)
		FUNC0(&(match->pattern), name);
	else
		FUNC1(&(match->pattern), name);
	FUNC4(list, match);
	a->setflag |= ID_IS_SET;
	return (ARCHIVE_OK);
}