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
typedef  scalar_t__ u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sshbuf*,char**,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sshbuf*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC2(struct sshbuf *m, char **sp)
{
	int r;
	u_char flag;

	*sp = NULL;
	if ((r = FUNC1(m, &flag)) != 0 ||
	    (r = FUNC0(m, flag ? NULL : sp, NULL)) != 0)
		return r;
	return 0;
}