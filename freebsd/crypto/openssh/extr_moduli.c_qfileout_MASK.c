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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(FILE * ofile, u_int32_t otype, u_int32_t otests, u_int32_t otries,
    u_int32_t osize, u_int32_t ogenerator, BIGNUM * omodulus)
{
	struct tm *gtm;
	time_t time_now;
	int res;

	FUNC4(&time_now);
	gtm = FUNC3(&time_now);

	res = FUNC2(ofile, "%04d%02d%02d%02d%02d%02d %u %u %u %u %x ",
	    gtm->tm_year + 1900, gtm->tm_mon + 1, gtm->tm_mday,
	    gtm->tm_hour, gtm->tm_min, gtm->tm_sec,
	    otype, otests, otries, osize, ogenerator);

	if (res < 0)
		return (-1);

	if (FUNC0(ofile, omodulus) < 1)
		return (-1);

	res = FUNC2(ofile, "\n");
	FUNC1(ofile);

	return (res > 0 ? 0 : -1);
}