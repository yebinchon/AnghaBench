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
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 long long FUNC1 (char const*,char const*,long long,long long,char*,int) ; 

long long
FUNC2(const char *desc, const char *val,
    long long min, long long max)
{
	long long result;
	char	errbuf[100];

	result = FUNC1(desc, val, min, max, errbuf, sizeof(errbuf));
	if (*errbuf != '\0')
		FUNC0(1, "%s", errbuf);
	return (result);
}