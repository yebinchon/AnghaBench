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
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,char**) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC3(int argc, char **argv)
{
	char *message;
	int result;

	FUNC0("GNOME ssh-askpass", "0.1", argc, argv);

	if (argc == 2)
		message = argv[1];
	else
		message = "Enter your OpenSSH passphrase:";

	FUNC2(stdout, 0, _IONBF, 0);
	result = FUNC1(message);

	return (result);
}