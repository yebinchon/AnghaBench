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
struct sshcipher {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 struct sshcipher* ciphers ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

const struct sshcipher *
FUNC1(const char *name)
{
	const struct sshcipher *c;
	for (c = ciphers; c->name != NULL; c++)
		if (FUNC0(c->name, name) == 0)
			return c;
	return NULL;
}