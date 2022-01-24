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
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_char ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sshbuf*,int) ; 
 scalar_t__* FUNC1 (struct sshbuf*) ; 

int
FUNC2(struct sshbuf *buf, u_char *valp)
{
	const u_char *p = FUNC1(buf);
	int r;

	if ((r = FUNC0(buf, 1)) < 0)
		return r;
	if (valp != NULL)
		*valp = (u_int8_t)*p;
	return 0;
}