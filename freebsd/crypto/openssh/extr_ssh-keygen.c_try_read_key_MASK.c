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
 int /*<<< orphan*/  KEY_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sshkey*) ; 
 struct sshkey* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sshkey*,char**) ; 

__attribute__((used)) static struct sshkey *
FUNC4(char **cpp)
{
	struct sshkey *ret;
	int r;

	if ((ret = FUNC2(KEY_UNSPEC)) == NULL)
		FUNC0("sshkey_new failed");
	if ((r = FUNC3(ret, cpp)) == 0)
		return ret;
	/* Not a key */
	FUNC1(ret);
	return NULL;
}