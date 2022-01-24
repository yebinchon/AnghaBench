#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct archive {int dummy; } ;
struct TYPE_2__ {int code; int (* setter ) (struct archive*) ;} ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* codes ; 
 int FUNC1 (struct archive*) ; 

int
FUNC2(struct archive *a, int code)
{
	int i;

	for (i = 0; codes[i].code != -1; i++) {
		if (code == codes[i].code)
			return ((codes[i].setter)(a));
	}

	FUNC0(a, EINVAL, "No such filter");
	return (ARCHIVE_FATAL);
}