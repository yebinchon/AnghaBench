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
struct stat {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
typedef  int /*<<< orphan*/  Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct stat*) ; 
 TYPE_1__ cur ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC2(const char *path, struct stat *st)
{
	Attrib *a;

	if (!(a = FUNC1(cur.conn, (char *)path, 1)))
		return(-1);

	FUNC0(a, st);

	return(0);
}