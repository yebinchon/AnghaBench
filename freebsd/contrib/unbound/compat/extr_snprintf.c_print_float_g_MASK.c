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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,int,unsigned long long) ; 
 int FUNC2 (char*,int,double,int) ; 

__attribute__((used)) static int
FUNC3(char* buf, int max, double value, int prec)
{
	unsigned long long whole = (unsigned long long)value;
	double remain = value - (double)whole;
	int before = 0;
	int len = 0;

	/* number of digits before the decimal point */
	while(whole > 0) {
		before++;
		whole /= 10;
	}
	whole = (unsigned long long)value;

	if(prec > before && remain != 0.0) {
		/* see if the last decimals are zero, if so, skip them */
		len = FUNC2(buf, max, remain, prec-before);
		while(len > 0 && buf[0]=='0') {
			FUNC0(buf, buf+1, --len);
		}
	}
	len += FUNC1(buf+len, max-len, whole);
	return len;
}