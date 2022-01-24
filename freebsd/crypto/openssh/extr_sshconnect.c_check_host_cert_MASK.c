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
struct sshkey {TYPE_1__* cert; } ;
struct TYPE_2__ {int /*<<< orphan*/  critical; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sshkey const*,int,int /*<<< orphan*/ ,char const*,char const**) ; 

__attribute__((used)) static int
FUNC3(const char *host, const struct sshkey *host_key)
{
	const char *reason;

	if (FUNC2(host_key, 1, 0, host, &reason) != 0) {
		FUNC0("%s", reason);
		return 0;
	}
	if (FUNC1(host_key->cert->critical) != 0) {
		FUNC0("Certificate for %s contains unsupported "
		    "critical options(s)", host);
		return 0;
	}
	return 1;
}