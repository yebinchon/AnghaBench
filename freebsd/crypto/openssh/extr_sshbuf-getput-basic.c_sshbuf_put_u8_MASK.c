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
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sshbuf*,int,int /*<<< orphan*/ **) ; 

int
FUNC1(struct sshbuf *buf, u_char val)
{
	u_char *p;
	int r;

	if ((r = FUNC0(buf, 1, &p)) < 0)
		return r;
	p[0] = val;
	return 0;
}