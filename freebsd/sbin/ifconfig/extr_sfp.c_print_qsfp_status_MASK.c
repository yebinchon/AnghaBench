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
typedef  int uint32_t ;
struct i2c_info {int qsfp; scalar_t__ error; } ;
typedef  int /*<<< orphan*/  buf3 ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SFF_8436_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct i2c_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_info*,char*,int,int) ; 
 scalar_t__ FUNC6 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_info*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12(struct i2c_info *ii, int verbose)
{
	char buf[80], buf2[40], buf3[40];
	uint32_t bitrate;
	int i;

	ii->qsfp = 1;

	/* Transceiver type */
	FUNC3(ii, buf, sizeof(buf));
	FUNC7(ii, buf2, sizeof(buf2));
	FUNC2(ii, buf3, sizeof(buf3));
	if (ii->error == 0)
		FUNC11("\tplugged: %s %s (%s)\n", buf, buf2, buf3);
	FUNC10(ii, buf, sizeof(buf));
	if (ii->error == 0)
		FUNC11("\t%s\n", buf);

	if (verbose > 1) {
		FUNC4(ii, buf, sizeof(buf));
		if (ii->error == 0)
			FUNC11("\tcompliance level: %s\n", buf);

		bitrate = FUNC1(ii);
		if (ii->error == 0 && bitrate > 0)
			FUNC11("\tnominal bitrate: %u Mbps\n", bitrate);
	}

	/*
	 * The standards in this area are not clear when the
	 * additional measurements are present or not. Use a valid
	 * temperature reading as an indicator for the presence of
	 * voltage and TX/RX power measurements.
	 */
	if (FUNC6(ii, buf, sizeof(buf)) == 0) {
		FUNC9(ii, buf2, sizeof(buf2));
		FUNC11("\tmodule temperature: %s voltage: %s\n", buf, buf2);
		for (i = 1; i <= 4; i++) {
			FUNC5(ii, buf, sizeof(buf), i);
			FUNC8(ii, buf2, sizeof(buf2), i);
			FUNC11("\tlane %d: RX: %s TX: %s\n", i, buf, buf2);
		}
	}

	if (verbose > 2) {
		FUNC11("\n\tSFF8436 DUMP (0xA0 128..255 range):\n");
		FUNC0(ii, SFF_8436_BASE, 128, 128);
		FUNC11("\n\tSFF8436 DUMP (0xA0 0..81 range):\n");
		FUNC0(ii, SFF_8436_BASE, 0, 82);
	}
}