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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DBL_MANT_DIG ; 
 int DBL_MAX_EXP ; 
 int DBL_MIN_EXP ; 
 int FLT_MANT_DIG ; 
 int FLT_MAX_EXP ; 
 int FLT_MIN_EXP ; 
 int FP_ILOGB0 ; 
 int FP_ILOGBNAN ; 
 long double INFINITY ; 
 int INT_MAX ; 
 int LDBL_MANT_DIG ; 
 int LDBL_MAX_EXP ; 
 int LDBL_MIN_EXP ; 
 long double NAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (double) ; 
 int FUNC2 (float) ; 
 int FUNC3 (long double) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 double FUNC6 (char*,char**) ; 
 float FUNC7 (char*,char**) ; 
 long double FUNC8 (char*,char**) ; 

int
FUNC9(void)
{
	char buf[128], *end;
	double d;
	float f;
	long double ld;
	int e, i;

	FUNC4("1..3\n");
	FUNC0(FUNC1(0) == FP_ILOGB0);
	FUNC0(FUNC1(NAN) == FP_ILOGBNAN);
	FUNC0(FUNC1(INFINITY) == INT_MAX);
	for (e = DBL_MIN_EXP - DBL_MANT_DIG; e < DBL_MAX_EXP; e++) {
		FUNC5(buf, sizeof(buf), "0x1.p%d", e);
		d = FUNC6(buf, &end);
		FUNC0(*end == '\0');
		i = FUNC1(d);
		FUNC0(i == e);
	}
	FUNC4("ok 1 - ilogb\n");

	FUNC0(FUNC2(0) == FP_ILOGB0);
	FUNC0(FUNC2(NAN) == FP_ILOGBNAN);
	FUNC0(FUNC2(INFINITY) == INT_MAX);
	for (e = FLT_MIN_EXP - FLT_MANT_DIG; e < FLT_MAX_EXP; e++) {
		FUNC5(buf, sizeof(buf), "0x1.p%d", e);
		f = FUNC7(buf, &end);
		FUNC0(*end == '\0');
		i = FUNC2(f);
		FUNC0(i == e);
	}
	FUNC4("ok 2 - ilogbf\n");

	FUNC0(FUNC3(0) == FP_ILOGB0);
	FUNC0(FUNC3(NAN) == FP_ILOGBNAN);
	FUNC0(FUNC3(INFINITY) == INT_MAX);
	for (e = LDBL_MIN_EXP - LDBL_MANT_DIG; e < LDBL_MAX_EXP; e++) {
		FUNC5(buf, sizeof(buf), "0x1.p%d", e);
		ld = FUNC8(buf, &end);
		FUNC0(*end == '\0');
		i = FUNC3(ld);
		FUNC0(i == e);
	}
	FUNC4("ok 3 - ilogbl\n");

	return (0);
}