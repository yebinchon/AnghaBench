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
struct TYPE_2__ {char* version_addendum; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_MAJOR_2 ; 
 int /*<<< orphan*/  PROTOCOL_MINOR_2 ; 
 int /*<<< orphan*/  SSH_VERSION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client_version_string ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vwrite ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC7(int connection_out, int minor1)
{
	/* Send our own protocol version identification. */
	FUNC6(&client_version_string, "SSH-%d.%d-%.100s%s%s\n",
	    PROTOCOL_MAJOR_2, PROTOCOL_MINOR_2, SSH_VERSION,
	    *options.version_addendum == '\0' ? "" : " ",
	    options.version_addendum);
	if (FUNC0(vwrite, connection_out, client_version_string,
	    FUNC5(client_version_string)) != FUNC5(client_version_string))
		FUNC3("write: %.100s", FUNC4(errno));
	FUNC1(client_version_string);
	FUNC2("Local version string %.100s", client_version_string);
}