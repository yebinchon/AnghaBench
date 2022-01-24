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
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int SSH_ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct sshbuf*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshkey const*) ; 
 int FUNC3 (struct sshkey const*,char**) ; 

int
FUNC4(const struct sshkey *key, struct sshbuf *b)
{
	int r = SSH_ERR_INTERNAL_ERROR;
	char *uu = NULL;

	if ((r = FUNC3(key, &uu)) != 0)
		goto out;
	if ((r = FUNC1(b, "%s %s",
	    FUNC2(key), uu)) != 0)
		goto out;
	r = 0;
 out:
	FUNC0(uu);
	return r;
}