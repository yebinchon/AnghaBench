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
struct sshkey {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct sshkey*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  get_cert ; 
 scalar_t__ hash_hosts ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ print_sshfp ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssh_port ; 
 int /*<<< orphan*/  FUNC8 (struct sshkey*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC9(const char *host, struct sshkey *key)
{
	char *hostport;
	const char *known_host, *hashed;

	if (print_sshfp) {
		FUNC0(host, key, stdout, 0);
		return;
	}

	hostport = FUNC7(host, ssh_port);
	FUNC6(hostport);
	if (hash_hosts && (hashed = FUNC5(host, NULL, 0)) == NULL)
		FUNC1("host_hash failed");
	known_host = hash_hosts ? hashed : hostport;
	if (!get_cert)
		FUNC2(stdout, "%s ", known_host);
	FUNC8(key, stdout);
	FUNC3("\n", stdout);
	FUNC4(hostport);
}