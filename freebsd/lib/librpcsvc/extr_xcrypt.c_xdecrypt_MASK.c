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
 int DES_DECRYPT ; 
 scalar_t__ FUNC0 (int) ; 
 int DES_HW ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*,char*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 char* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

int
FUNC9(char *secret, char *passwd)
{
	char key[8];
	char ivec[8];
	char *buf;
	int err;
	int len;

	len = FUNC8(secret) / 2;
	if ((buf = FUNC6((unsigned)len)) == NULL) {
		return(0);
	}

	FUNC5(len, secret, buf);
	FUNC7(passwd, key);	
	FUNC2(ivec, 8);

	err = FUNC3(key, buf, len, DES_DECRYPT | DES_HW, ivec);
	if (FUNC0(err)) {
		FUNC4(buf);
		return (0);
	}
	FUNC1(len, (unsigned char *) buf, secret);
	FUNC4(buf);
	return (1);
}