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
 int LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,double) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC4(
	double d
	)
{
	char *	buf;
	char *	pch_e;
	char *	pch_nz;

	FUNC0(buf);
	FUNC1(buf, LIB_BUFLENGTH, "%g", d);

	/* use lowercase 'e', strip any leading zeroes in exponent */
	pch_e = FUNC2(buf, 'e');
	if (NULL == pch_e) {
		pch_e = FUNC2(buf, 'E');
		if (NULL == pch_e)
			return buf;
		*pch_e = 'e';
	}
	pch_e++;
	if ('-' == *pch_e)
		pch_e++;
	pch_nz = pch_e;
	while ('0' == *pch_nz)
		pch_nz++;
	if (pch_nz == pch_e)
		return buf;
	FUNC3(pch_e, pch_nz, LIB_BUFLENGTH - (pch_e - buf));

	return buf;
}