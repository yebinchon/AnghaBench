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
struct key {int key_len; int /*<<< orphan*/  typen; int /*<<< orphan*/  typei; int /*<<< orphan*/  key_seq; scalar_t__ key_id; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD5_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int const,int /*<<< orphan*/ ,struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC5(void)
{
	/* We use a copy of the MD5 verification code, but modify the
	 * last bit to make sure verification fails.
	 */
	const char* PKT_DATA =
	    "sometestdata"			/* Data */
	    "\0\0\0\0"				/* Key-ID (unused) */
	    "\xc7\x58\x99\xdd\x99\x32\x0f\x71"	/* MAC */
	    "\x2b\x7b\xfe\x4f\xa2\x32\xcf\x00"; /* Last byte is wrong! */
	const int PKT_LEN = 12;

	struct key md5;
	md5.next = NULL;
	md5.key_id = 0;
	md5.key_len = 6;
	FUNC3(&md5.key_seq, "md5key", md5.key_len);
	FUNC4(md5.typen, "MD5", sizeof(md5.typen));
	md5.typei = FUNC2(md5.typen, NULL);

	FUNC0(FUNC1(PKT_DATA, PKT_LEN, MD5_LENGTH, &md5));
}