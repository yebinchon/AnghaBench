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
struct scard_data {scalar_t__ sim_type; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 long SCARD_S_SUCCESS ; 
 scalar_t__ SCARD_USIM ; 
 unsigned char SIM_CMD_READ_BIN ; 
 unsigned char USIM_CLA ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,size_t) ; 
 long FUNC3 (struct scard_data*,unsigned char*,int,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC5(struct scard_data *scard,
			   unsigned char *data, size_t len)
{
	unsigned char cmd[5] = { SIM_CMD_READ_BIN /* , len */ };
	size_t blen = len + 3;
	unsigned char *buf;
	long ret;

	cmd[4] = len;

	buf = FUNC1(blen);
	if (buf == NULL)
		return -1;

	if (scard->sim_type == SCARD_USIM)
		cmd[0] = USIM_CLA;
	ret = FUNC3(scard, cmd, sizeof(cmd), buf, &blen);
	if (ret != SCARD_S_SUCCESS) {
		FUNC0(buf);
		return -2;
	}
	if (blen != len + 2) {
		FUNC4(MSG_DEBUG, "SCARD: file read returned unexpected "
			   "length %ld (expected %ld)",
			   (long) blen, (long) len + 2);
		FUNC0(buf);
		return -3;
	}

	if (buf[len] != 0x90 || buf[len + 1] != 0x00) {
		FUNC4(MSG_DEBUG, "SCARD: file read returned unexpected "
			   "status %02x %02x (expected 90 00)",
			   buf[len], buf[len + 1]);
		FUNC0(buf);
		return -4;
	}

	FUNC2(data, buf, len);
	FUNC0(buf);

	return 0;
}