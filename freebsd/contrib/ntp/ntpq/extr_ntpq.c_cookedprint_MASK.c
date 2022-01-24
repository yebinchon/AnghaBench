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
typedef  int u_long ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  l_fp ;
typedef  int /*<<< orphan*/  bv ;
typedef  int /*<<< orphan*/  bn ;
typedef  int /*<<< orphan*/  b ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  AR 136 
#define  FX 135 
#define  HA 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  LP 133 
 int MAXVALLEN ; 
 int MAXVARLEN ; 
#define  NA 132 
#define  OC 131 
#define  PADDING 130 
#define  RF 129 
#define  TS 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (size_t*,char const**,char**,char**) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 char* FUNC17 (int,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (char*) ; 
 char* FUNC20 (int) ; 
 int FUNC21 (char*) ; 

__attribute__((used)) static void
FUNC22(
	int datatype,
	size_t length,
	const char *data,
	int status,
	int quiet,
	FILE *fp
	)
{
	char *name;
	char *value;
	char output_raw;
	int fmt;
	l_fp lfp;
	sockaddr_u hval;
	u_long uval;
	int narr;
	size_t len;
	l_fp lfparr[8];
	char b[12];
	char bn[2 * MAXVARLEN];
	char bv[2 * MAXVALLEN];

	FUNC1(datatype);

	if (!quiet)
		FUNC8(*fp, "status=%04x %s,\n", status,
			FUNC17(datatype, status));

	FUNC16();
	while (FUNC9(&length, &data, &name, &value)) {
		fmt = FUNC21(name);
		output_raw = 0;
		switch (fmt) {

		case PADDING:
			output_raw = '*';
			break;

		case TS:
			if (!value || !FUNC5(value, &lfp))
				output_raw = '?';
			else
				FUNC11(fp, name, FUNC13(&lfp));
			break;

		case HA:	/* fallthru */
		case NA:
			if (!value || !FUNC4(value, &hval)) {
				output_raw = '?';
			} else if (fmt == HA){
				FUNC11(fp, name, FUNC10(&hval));
			} else {
				FUNC11(fp, name, FUNC18(&hval));
			}
			break;

		case RF:
			if (!value) {
				output_raw = '?';
			} else if (FUNC4(value, &hval)) {
				if (FUNC0(&hval))
					FUNC11(fp, name,
					       FUNC14(&hval));
				else
					FUNC11(fp, name, FUNC18(&hval));
			} else if (FUNC19(value) <= 4) {
				FUNC11(fp, name, value);
			} else {
				output_raw = '?';
			}
			break;

		case LP:
			if (!value || !FUNC6(value, &uval) || uval > 3) {
				output_raw = '?';
			} else {
				b[0] = (0x2 & uval)
					   ? '1'
					   : '0';
				b[1] = (0x1 & uval)
					   ? '1'
					   : '0';
				b[2] = '\0';
				FUNC11(fp, name, b);
			}
			break;

		case OC:
			if (!value || !FUNC6(value, &uval)) {
				output_raw = '?';
			} else {
				FUNC15(b, sizeof(b), "%03lo", uval);
				FUNC11(fp, name, b);
			}
			break;

		case AR:
			if (!value || !FUNC3(value, &narr, lfparr, 8))
				output_raw = '?';
			else
				FUNC12(fp, name, narr, lfparr);
			break;

		case FX:
			if (!value || !FUNC6(value, &uval))
				output_raw = '?';
			else
				FUNC11(fp, name, FUNC20(uval));
			break;

		default:
			FUNC8(stderr, "Internal error in cookedprint, %s=%s, fmt %d\n",
				name, value, fmt);
			output_raw = '?';
			break;
		}

		if (output_raw != 0) {
			/* TALOS-CAN-0063: avoid buffer overrun */
			FUNC2(name, MAXVARLEN, bn, sizeof(bn));
			if (output_raw != '*') {
				FUNC2(value, MAXVALLEN,
					 bv, sizeof(bv) - 1);
				len = FUNC19(bv);
				bv[len] = output_raw;
				bv[len+1] = '\0';
			} else {
				FUNC2(value, MAXVALLEN,
					 bv, sizeof(bv));
			}
			FUNC11(fp, bn, bv);
		}
	}
	FUNC7(fp);
}