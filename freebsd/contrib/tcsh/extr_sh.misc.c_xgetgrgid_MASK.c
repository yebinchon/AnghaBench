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
struct group {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 struct group* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

struct group *
FUNC2(gid_t xgid)
{
    struct group *res;

    errno = 0;
    while ((res = FUNC0(xgid)) == NULL && errno == EINTR) {
	if (FUNC1())
	    break;
	errno = 0;
    }
    return res;
}