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
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_year; scalar_t__ tm_isdst; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tm*) ; 

__attribute__((used)) static struct tm *
FUNC5(int64_t clock, struct tm *result)
{
	result->tm_isdst = 0;
	result->tm_sec   = (int) FUNC1(clock, 60);
	clock            =       FUNC0(clock, 60);
	result->tm_min   = (int) FUNC1(clock, 60);
	clock            =       FUNC0(clock, 60);
	result->tm_hour  = (int) FUNC1(clock, 24);
	clock            =       FUNC0(clock, 24);

	FUNC4(clock, result);
	FUNC2(result);
	FUNC3(result);
	result->tm_year -= 1900;

	return result;
}