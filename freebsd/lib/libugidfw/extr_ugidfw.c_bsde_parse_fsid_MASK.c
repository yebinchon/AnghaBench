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
struct fsid {int dummy; } ;
struct statfs {struct fsid f_fsid; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,struct statfs*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char *spec, struct fsid *fsid, size_t buflen, char *errstr)
{
	struct statfs buf;

	if (FUNC1(spec, &buf) < 0) {
		FUNC0(errstr, buflen, "Unable to get id for %s: %s",
		    spec, FUNC2(errno));
		return (-1);
	}

	*fsid = buf.f_fsid;

	return (0);
}