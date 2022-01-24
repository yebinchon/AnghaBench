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
struct key {int key_id; int key_len; int /*<<< orphan*/  typen; int /*<<< orphan*/  typei; int /*<<< orphan*/  key_seq; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int SHA1_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int const,int,struct key*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (char const*) ; 

void
FUNC8(void)
{
#ifdef OPENSSL

	const char* PKT_DATA = "abcdefgh0123";
	const int PKT_LEN = strlen(PKT_DATA);
	const char* EXPECTED_DIGEST =
		"\x17\xaa\x82\x97\xc7\x17\x13\x6a\x9b\xa9"
		"\x63\x85\xb4\xce\xbe\x94\xa0\x97\x16\x1d";
	char actual[SHA1_LENGTH];

	struct key sha1;
	sha1.next = NULL;
	sha1.key_id = 20;
	sha1.key_len = 7;
	memcpy(&sha1.key_seq, "sha1seq", sha1.key_len);
	strlcpy(sha1.typen, "SHA1", sizeof(sha1.typen));
	sha1.typei = keytype_from_text(sha1.typen, NULL);

	TEST_ASSERT_EQUAL(SHA1_LENGTH,
			  make_mac(PKT_DATA, PKT_LEN, SHA1_LENGTH, &sha1, actual));

	TEST_ASSERT_EQUAL_MEMORY(EXPECTED_DIGEST, actual, SHA1_LENGTH);
	
#else
	
	FUNC2("OpenSSL not found, skipping...");
	
#endif	/* OPENSSL */
}