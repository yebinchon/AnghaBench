#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct parse {int nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {char* string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ info_auth_keyid ; 
 int /*<<< orphan*/  info_auth_keytype ; 

__attribute__((used)) static void
FUNC5(
	struct parse *pcmd,
	FILE *fp
	)
{
	const char *pass;

	if (info_auth_keyid == 0) {
		info_auth_keyid = FUNC3("Keyid: ");
		if (info_auth_keyid == 0) {
			(void)FUNC2(fp, "Keyid must be defined\n");
			return;
		}
	}
	if (pcmd->nargs >= 1)
		pass = pcmd->argval[0].string;
	else {
		pass = FUNC4(info_auth_keytype);
		if ('\0' == pass[0]) {
			FUNC2(fp, "Password unchanged\n");
			return;
		}
	}
	FUNC1(info_auth_keyid, info_auth_keytype,
		   (const u_char *)pass);
	FUNC0(info_auth_keyid, 1);
}