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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC4(FILE *fp, const u_char *data, u_int len)
{
	char *buf;
	int i, n;

	if (len > 65536) {
		FUNC0(fp, "dump_base64: len > 65536\n");
		return;
	}
	buf = FUNC3(NULL, 2, len);
	n = FUNC2(data, len, buf, 2*len);
	for (i = 0; i < n; i++) {
		FUNC0(fp, "%c", buf[i]);
		if (i % 70 == 69)
			FUNC0(fp, "\n");
	}
	if (i % 70 != 69)
		FUNC0(fp, "\n");
	FUNC1(buf);
}