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
 int /*<<< orphan*/  FUNC0 (struct sshbuf*) ; 
 int FUNC1 (struct sshbuf*,struct sshbuf**) ; 
 int FUNC2 (struct sshbuf*,struct sshkey**,int) ; 

int
FUNC3(struct sshbuf *buf, struct sshkey **keyp)
{
	struct sshbuf *b;
	int r;

	if ((r = FUNC1(buf, &b)) != 0)
		return r;
	r = FUNC2(b, keyp, 1);
	FUNC0(b);
	return r;
}