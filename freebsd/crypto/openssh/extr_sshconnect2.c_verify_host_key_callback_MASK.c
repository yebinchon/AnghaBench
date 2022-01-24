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
struct ssh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sshkey*) ; 
 int /*<<< orphan*/  xxx_host ; 
 int /*<<< orphan*/  xxx_hostaddr ; 

__attribute__((used)) static int
FUNC2(struct sshkey *hostkey, struct ssh *ssh)
{
	if (FUNC1(xxx_host, xxx_hostaddr, hostkey) == -1)
		FUNC0("Host key verification failed.");
	return 0;
}