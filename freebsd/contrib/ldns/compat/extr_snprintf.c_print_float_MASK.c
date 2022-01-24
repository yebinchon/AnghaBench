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

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,unsigned long long) ; 
 int FUNC1 (char*,int,double,int) ; 

__attribute__((used)) static int
FUNC2(char* buf, int max, double value, int prec)
{
	/* as xxx.xxx  if prec==0, no '.', with prec decimals after . */
	/* no conversion for NAN and INF, because we do not want to require
	   linking with -lm. */
	/* Thus, the conversions use 64bit integers to convert the numbers,
	 * which makes 19 digits before and after the decimal point the max */
	unsigned long long whole = (unsigned long long)value;
	double remain = value - (double)whole;
	int len = 0;
	if(prec != 0)
		len = FUNC1(buf, max, remain, prec);
	len += FUNC0(buf+len, max-len, whole);
	return len;
}