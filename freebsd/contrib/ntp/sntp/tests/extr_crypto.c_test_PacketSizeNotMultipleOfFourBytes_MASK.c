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
 int MD5_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int const,int,struct key*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC5(void)
{
	const char* PKT_DATA = "123456";
	const int PKT_LEN = 6;
	char actual[MD5_LENGTH];

	struct key md5;
	md5.next = NULL;
	md5.key_id = 10;
	md5.key_len = 6;
	FUNC3(&md5.key_seq, "md5seq", md5.key_len);
	FUNC4(md5.typen, "MD5", sizeof(md5.typen));
	md5.typei = FUNC1(md5.typen, NULL);

	FUNC0(0, FUNC2(PKT_DATA, PKT_LEN, MD5_LENGTH, &md5, actual));
}