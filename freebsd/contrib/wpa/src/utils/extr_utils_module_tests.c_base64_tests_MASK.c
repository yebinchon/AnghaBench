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
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 unsigned char* FUNC0 (unsigned char const*,int,size_t*) ; 
 unsigned char* FUNC1 (unsigned char const*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(void)
{
	int errors = 0;
	unsigned char *res;
	size_t res_len;

	FUNC3(MSG_INFO, "base64 tests");

	res = FUNC1((const unsigned char *) "", ~0, &res_len);
	if (res) {
		errors++;
		FUNC2(res);
	}

	res = FUNC1((const unsigned char *) "=", 1, &res_len);
	if (!res || res_len != 5 || res[0] != 'P' || res[1] != 'Q' ||
	    res[2] != '=' || res[3] != '=' || res[4] != '\n')
		errors++;
	FUNC2(res);

	res = FUNC1((const unsigned char *) "=", 1, NULL);
	if (!res || res[0] != 'P' || res[1] != 'Q' ||
	    res[2] != '=' || res[3] != '=' || res[4] != '\n')
		errors++;
	FUNC2(res);

	res = FUNC0((const unsigned char *) "", 0, &res_len);
	if (res) {
		errors++;
		FUNC2(res);
	}

	res = FUNC0((const unsigned char *) "a", 1, &res_len);
	if (res) {
		errors++;
		FUNC2(res);
	}

	res = FUNC0((const unsigned char *) "====", 4, &res_len);
	if (res) {
		errors++;
		FUNC2(res);
	}

	res = FUNC0((const unsigned char *) "PQ==", 4, &res_len);
	if (!res || res_len != 1 || res[0] != '=')
		errors++;
	FUNC2(res);

	res = FUNC0((const unsigned char *) "P.Q-=!=*", 8, &res_len);
	if (!res || res_len != 1 || res[0] != '=')
		errors++;
	FUNC2(res);

	if (errors) {
		FUNC3(MSG_ERROR, "%d base64 test(s) failed", errors);
		return -1;
	}

	return 0;
}