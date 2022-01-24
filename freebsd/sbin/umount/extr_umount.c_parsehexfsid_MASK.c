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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  fsid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

int
FUNC3(const char *hex, fsid_t *fsid)
{
	char hexbuf[3];
	int i;

	if (FUNC1(hex) != sizeof(*fsid) * 2)
		return (-1);
	hexbuf[2] = '\0';
	for (i = 0; i < (int)sizeof(*fsid); i++) {
		hexbuf[0] = hex[i * 2];
		hexbuf[1] = hex[i * 2 + 1];
		if (!FUNC0(hexbuf[0]) || !FUNC0(hexbuf[1]))
			return (-1);
		((u_char *)fsid)[i] = FUNC2(hexbuf, NULL, 16);
	}
	return (0);
}