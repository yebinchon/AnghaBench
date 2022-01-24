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
struct timespec {scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  cmbat ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,struct timespec*,struct timespec*) ; 

__attribute__((used)) static int
FUNC5(struct timespec *lastupdated)
{
    struct timespec	curtime;

    FUNC0(cmbat);

    if (lastupdated == NULL)
	return (TRUE);
    if (!FUNC3(lastupdated))
	return (TRUE);

    FUNC2(&curtime);
    FUNC4(&curtime, lastupdated, &curtime);
    return (curtime.tv_sec < 0 ||
	    curtime.tv_sec > FUNC1());
}