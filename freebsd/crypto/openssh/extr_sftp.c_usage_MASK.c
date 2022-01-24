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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	extern char *__progname;

	FUNC1(stderr,
	    "usage: %s [-46aCfpqrv] [-B buffer_size] [-b batchfile] [-c cipher]\n"
	    "          [-D sftp_server_path] [-F ssh_config] "
	    "[-i identity_file] [-l limit]\n"
	    "          [-o ssh_option] [-P port] [-R num_requests] "
	    "[-S program]\n"
	    "          [-s subsystem | sftp_server] destination\n",
	    __progname);
	FUNC0(1);
}