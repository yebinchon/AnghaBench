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
typedef  int uint8_t ;
struct i2c_info {scalar_t__ error; int do_diag; } ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  buf3 ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_8472_BASE ; 
 int SFF_8472_DDM_DONE ; 
 int SFF_8472_DDM_INTERNAL ; 
 int /*<<< orphan*/  SFF_8472_DIAG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct i2c_info *ii, int verbose)
{
	char buf[80], buf2[40], buf3[40];
	uint8_t diag_type, flags;

	/* Read diagnostic monitoring type */
	FUNC11(ii, SFF_8472_BASE, SFF_8472_DIAG_TYPE, 1, (caddr_t)&diag_type);
	if (ii->error != 0)
		return;

	/*
	 * Read monitoring data IFF it is supplied AND is
	 * internally calibrated
	 */
	flags = SFF_8472_DDM_DONE | SFF_8472_DDM_INTERNAL;
	if ((diag_type & flags) == flags)
		ii->do_diag = 1;

	/* Transceiver type */
	FUNC2(ii, buf, sizeof(buf));
	FUNC5(ii, buf2, sizeof(buf2));
	FUNC1(ii, buf3, sizeof(buf3));
	if (ii->error == 0)
		FUNC9("\tplugged: %s %s (%s)\n", buf, buf2, buf3);
	FUNC8(ii, buf, sizeof(buf));
	if (ii->error == 0)
		FUNC9("\t%s\n", buf);

	if (verbose > 5)
		FUNC10(ii, buf, sizeof(buf));
	/*
	 * Request current measurements iff they are provided:
	 */
	if (ii->do_diag != 0) {
		FUNC4(ii, buf, sizeof(buf));
		FUNC7(ii, buf2, sizeof(buf2));
		FUNC9("\tmodule temperature: %s Voltage: %s\n", buf, buf2);
		FUNC3(ii, buf, sizeof(buf));
		FUNC6(ii, buf2, sizeof(buf2));
		FUNC9("\tRX: %s TX: %s\n", buf, buf2);
	}

	if (verbose > 2) {
		FUNC9("\n\tSFF8472 DUMP (0xA0 0..127 range):\n");
		FUNC0(ii, SFF_8472_BASE, 0, 128);
	}
}