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
typedef  int wchar_t ;
struct match_list {int dummy; } ;
struct match {int /*<<< orphan*/  pattern; } ;
struct archive_match {int /*<<< orphan*/  setflag; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  PATTERN_IS_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*,size_t) ; 
 struct match* FUNC1 (int,int) ; 
 int FUNC2 (struct archive_match*) ; 
 int /*<<< orphan*/  FUNC3 (struct match_list*,struct match*) ; 
 size_t FUNC4 (int const*) ; 

__attribute__((used)) static int
FUNC5(struct archive_match *a, struct match_list *list,
    const wchar_t *pattern)
{
	struct match *match;
	size_t len;

	match = FUNC1(1, sizeof(*match));
	if (match == NULL)
		return (FUNC2(a));
	/* Both "foo/" and "foo" should match "foo/bar". */
	len = FUNC4(pattern);
	if (len && pattern[len - 1] == L'/')
		--len;
	FUNC0(&(match->pattern), pattern, len);
	FUNC3(list, match);
	a->setflag |= PATTERN_IS_SET;
	return (ARCHIVE_OK);
}