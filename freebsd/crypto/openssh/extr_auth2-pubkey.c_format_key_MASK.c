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
struct sshkey {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fingerprint_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_FP_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ options ; 
 char* FUNC1 (struct sshkey const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sshkey const*) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *
FUNC4(const struct sshkey *key)
{
	char *ret, *fp = FUNC1(key,
	    options.fingerprint_hash, SSH_FP_DEFAULT);

	FUNC3(&ret, "%s %s", FUNC2(key), fp);
	FUNC0(fp);
	return ret;
}