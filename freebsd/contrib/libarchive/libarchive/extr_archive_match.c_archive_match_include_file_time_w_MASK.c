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
struct archive_match {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_match*,int,int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct archive*,int,char*) ; 

int
FUNC2(struct archive *_a, int flag,
    const wchar_t *pathname)
{
	int r;

	r = FUNC1(_a, flag, "archive_match_include_file_time_w");
	if (r != ARCHIVE_OK)
		return (r);
	return FUNC0((struct archive_match *)_a,
			flag, pathname);
}