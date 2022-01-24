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
typedef  int /*<<< orphan*/  wchar_t ;
struct archive_match {int /*<<< orphan*/  inclusion_unames; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_MATCH_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int FUNC0 (struct archive_match*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC2(struct archive *_a, const wchar_t *uname)
{
	struct archive_match *a;

	FUNC1(_a, ARCHIVE_MATCH_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_match_include_uname_w");
	a = (struct archive_match *)_a;
	return (FUNC0(a, &(a->inclusion_unames), 0, uname));
}