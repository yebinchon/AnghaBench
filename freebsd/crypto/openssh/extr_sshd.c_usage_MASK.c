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
 char* OPENSSL_VERSION_STRING ; 
 char* SSH_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	if (options.version_addendum && *options.version_addendum != '\0')
		FUNC1(stderr, "%s %s, %s\n",
		    SSH_RELEASE,
		    options.version_addendum, OPENSSL_VERSION_STRING);
	else
		FUNC1(stderr, "%s, %s\n",
		    SSH_RELEASE, OPENSSL_VERSION_STRING);
	FUNC1(stderr,
"usage: sshd [-46DdeiqTt] [-C connection_spec] [-c host_cert_file]\n"
"            [-E log_file] [-f config_file] [-g login_grace_time]\n"
"            [-h host_key_file] [-o option] [-p port] [-u len]\n"
	);
	FUNC0(1);
}