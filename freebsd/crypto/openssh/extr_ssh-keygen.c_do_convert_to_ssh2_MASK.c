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
struct sshkey {int dummy; } ;
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  comment ;

/* Variables and functions */
 char* SSH_COM_PUBLIC_BEGIN ; 
 char* SSH_COM_PUBLIC_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* hostname ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sshkey*) ; 
 int FUNC8 (struct sshkey*) ; 
 int FUNC9 (struct sshkey*,int /*<<< orphan*/ **,size_t*) ; 
 char* FUNC10 (struct sshkey*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC11(struct passwd *pw, struct sshkey *k)
{
	size_t len;
	u_char *blob;
	char comment[61];
	int r;

	if ((r = FUNC9(k, &blob, &len)) != 0)
		FUNC2("key_to_blob failed: %s", FUNC6(r));
	/* Comment + surrounds must fit into 72 chars (RFC 4716 sec 3.3) */
	FUNC5(comment, sizeof(comment),
	    "%u-bit %s, converted by %s@%s from OpenSSH",
	    FUNC8(k), FUNC10(k),
	    pw->pw_name, hostname);

	FUNC3(stdout, "%s\n", SSH_COM_PUBLIC_BEGIN);
	FUNC3(stdout, "Comment: \"%s\"\n", comment);
	FUNC0(stdout, blob, len);
	FUNC3(stdout, "%s\n", SSH_COM_PUBLIC_END);
	FUNC7(k);
	FUNC4(blob);
	FUNC1(0);
}