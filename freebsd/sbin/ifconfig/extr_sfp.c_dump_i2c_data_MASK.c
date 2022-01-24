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
typedef  scalar_t__ uint8_t ;
struct i2c_info {scalar_t__ error; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_info*,scalar_t__,scalar_t__,int,unsigned char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(struct i2c_info *ii, uint8_t addr, uint8_t off, uint8_t len)
{
	unsigned char buf[16];
	int i, read;

	while (len > 0) {
		FUNC2(buf, 0, sizeof(buf));
		read = FUNC0(sizeof(buf), len);
		FUNC4(ii, addr, off, read, buf);
		if (ii->error != 0) {
			FUNC1(stderr, "Error reading i2c info\n");
			return;
		}

		FUNC3("\t");
		for (i = 0; i < read; i++)
			FUNC3("%02X ", buf[i]);
		FUNC3("\n");
		len -= read;
		off += read;
	}
}