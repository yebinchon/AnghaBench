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
struct tm {scalar_t__ tm_mday; int /*<<< orphan*/  tm_mon; scalar_t__ tm_year; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

int32_t
FUNC1(
	const struct tm *utm
	)
{
	return FUNC0(utm->tm_year + 1899,
				       utm->tm_mon,
				       utm->tm_mday - 1) + 1;
}