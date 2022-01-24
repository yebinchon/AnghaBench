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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_wday; int tm_yday; scalar_t__ tm_isdst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 

__attribute__((used)) static time_t
FUNC2(uint32_t dos_date)
{
    struct tm t;

    if (dos_date == 0)
	return(0);

    FUNC0(dos_date, &t);
    t.tm_wday = 1;
    t.tm_yday = 1;
    t.tm_isdst = 0;

    return (FUNC1(&t));
}