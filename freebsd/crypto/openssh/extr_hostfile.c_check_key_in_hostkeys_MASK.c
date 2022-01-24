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
struct hostkeys {int dummy; } ;
struct hostkey_entry {int dummy; } ;
typedef  int /*<<< orphan*/  HostStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostkeys*,struct sshkey*,int /*<<< orphan*/ ,struct hostkey_entry const**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

HostStatus
FUNC2(struct hostkeys *hostkeys, struct sshkey *key,
    const struct hostkey_entry **found)
{
	if (key == NULL)
		FUNC1("no key to look up");
	return FUNC0(hostkeys, key, 0, found);
}