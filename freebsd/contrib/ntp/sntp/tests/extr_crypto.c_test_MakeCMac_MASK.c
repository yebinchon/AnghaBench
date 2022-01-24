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
struct key {int key_id; int key_len; int /*<<< orphan*/  typen; int /*<<< orphan*/  key_seq; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 char* CMAC ; 
 int CMAC_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int const,int,struct key*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (char const*) ; 

void
FUNC6(void)
{
#if defined(OPENSSL) && defined(ENABLE_CMAC)

	const char* PKT_DATA = "abcdefgh0123";
	const int PKT_LEN = strlen(PKT_DATA);
	const char* EXPECTED_DIGEST =
		"\xdd\x35\xd5\xf5\x14\x23\xd9\xd6"
		"\x38\x5d\x29\x80\xfe\x51\xb9\x6b";
	char actual[CMAC_LENGTH];

	struct key cmac;
	cmac.next = NULL;
	cmac.key_id = 30;
	cmac.key_len = CMAC_LENGTH;
	memcpy(&cmac.key_seq, "aes-128-cmac-seq", cmac.key_len);
	memcpy(&cmac.typen, CMAC, strlen(CMAC) + 1);

	TEST_ASSERT_EQUAL(CMAC_LENGTH,
		    make_mac(PKT_DATA, PKT_LEN, CMAC_LENGTH, &cmac, actual));

	TEST_ASSERT_EQUAL_MEMORY(EXPECTED_DIGEST, actual, CMAC_LENGTH);
	
#else
	
	FUNC2("OpenSSL not found, skipping...");
	
#endif	/* OPENSSL */
}