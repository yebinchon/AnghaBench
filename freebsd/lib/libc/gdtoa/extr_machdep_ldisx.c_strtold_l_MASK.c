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
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLT_ROUNDS ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**,int /*<<< orphan*/ ,long double*,int /*<<< orphan*/ ) ; 

long double
FUNC2(const char * __restrict s, char ** __restrict sp, locale_t locale)
{
	long double result;
	FUNC0(locale);

	FUNC1(s, sp, FLT_ROUNDS, &result, locale);
	return result;
}