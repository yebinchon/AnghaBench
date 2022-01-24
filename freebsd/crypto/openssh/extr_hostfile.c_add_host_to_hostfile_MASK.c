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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,struct sshkey const*,int) ; 

int
FUNC3(const char *filename, const char *host,
    const struct sshkey *key, int store_hash)
{
	FILE *f;
	int success;

	if (key == NULL)
		return 1;	/* XXX ? */
	f = FUNC1(filename, "a");
	if (!f)
		return 0;
	success = FUNC2(f, host, NULL, key, store_hash);
	FUNC0(f);
	return success;
}