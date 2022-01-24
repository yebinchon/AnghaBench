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
typedef  unsigned int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC3(void)
{
    struct timeval tv;
    uint64_t ts = (uint64_t)0U;
    int ret;

    ret = FUNC0(&tv, NULL);
    if (ret == 0) {
        ts = (uint64_t)tv.tv_sec * 1000000U + (uint64_t)tv.tv_usec;
    } else {
        FUNC1("gettimeofday: %s", FUNC2(errno));
    }
    return ts;
}