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
typedef  int /*<<< orphan*/  time_t ;
struct stat {int dummy; } ;
struct archive_match {int dummy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_entry*) ; 
 long FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 long FUNC5 (struct archive_entry*) ; 
 struct archive_entry* FUNC6 () ; 
 int FUNC7 (struct archive_match*) ; 
 int FUNC8 (struct archive_match*,int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int
FUNC9(struct archive_match *a, int timetype, struct stat *st)
{
	struct archive_entry *ae;
	time_t ctime_sec, mtime_sec;
	long ctime_ns, mtime_ns;

	ae = FUNC6();
	if (ae == NULL)
		return (FUNC7(a));
	FUNC0(ae, st);
	ctime_sec = FUNC1(ae);
	ctime_ns = FUNC2(ae);
	mtime_sec = FUNC4(ae);
	mtime_ns = FUNC5(ae);
	FUNC3(ae);
	return FUNC8(a, timetype, mtime_sec, mtime_ns,
			ctime_sec, ctime_ns);
}