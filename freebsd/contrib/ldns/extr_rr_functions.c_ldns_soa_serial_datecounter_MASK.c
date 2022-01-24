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
struct tm {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

uint32_t FUNC4(uint32_t s, void *data)
{
	struct tm tm;
	char s_str[11];
	int32_t new_s;
	time_t t = data ? (time_t) (intptr_t) data : FUNC1(NULL);

	(void) FUNC3(s_str, 11, "%Y%m%d00", FUNC2(&t, &tm));
	new_s = (int32_t) FUNC0(s_str);
	return new_s - ((int32_t) s) <= 0 ? s+1 : ((uint32_t) new_s);
}