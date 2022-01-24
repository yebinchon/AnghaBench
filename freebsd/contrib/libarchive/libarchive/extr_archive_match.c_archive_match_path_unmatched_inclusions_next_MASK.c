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
struct archive_match {int /*<<< orphan*/  inclusions; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_MATCH_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct archive_match*,int /*<<< orphan*/ *,int,void const**) ; 

int
FUNC2(struct archive *_a,
    const char **_p)
{
	struct archive_match *a;
	const void *v;
	int r;

	FUNC0(_a, ARCHIVE_MATCH_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_match_unmatched_inclusions_next");
	a = (struct archive_match *)_a;

	r = FUNC1(a, &(a->inclusions), 1, &v);
	*_p = (const char *)v;
	return (r);
}