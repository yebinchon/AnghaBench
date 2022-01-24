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
typedef  scalar_t__ u_int8_t ;
struct ata_security_password {int ctrl; int /*<<< orphan*/  password; } ;
struct ata_cmd {scalar_t__ command; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int ATA_SECURITY_LEVEL_MAXIMUM ; 
 int ATA_SECURITY_PASSWORD_MASTER ; 
 scalar_t__ ATA_SECURITY_SET_PASSWORD ; 
 char* FUNC0 (struct ata_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_cmd*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(u_int8_t command, struct ata_security_password *pwd)
{
	struct ata_cmd cmd;

	FUNC1(&cmd, sizeof(cmd));
	cmd.command = command;
	FUNC2("Issuing %s", FUNC0(&cmd));

	if (pwd != NULL) {
		char pass[sizeof(pwd->password)+1];

		/* pwd->password may not be null terminated */
		pass[sizeof(pwd->password)] = '\0';
		FUNC3(pass, pwd->password, sizeof(pwd->password));
		FUNC2(" password='%s', user='%s'",
			pass,
			(pwd->ctrl & ATA_SECURITY_PASSWORD_MASTER) ?
			"master" : "user");

		if (command == ATA_SECURITY_SET_PASSWORD) {
			FUNC2(", mode='%s'",
			       (pwd->ctrl & ATA_SECURITY_LEVEL_MAXIMUM) ?
			       "maximum" : "high");
		}
	}

	FUNC2("\n");
}