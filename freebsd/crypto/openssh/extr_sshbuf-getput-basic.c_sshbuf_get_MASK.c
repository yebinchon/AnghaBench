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
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (struct sshbuf*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (struct sshbuf*) ; 

int
FUNC3(struct sshbuf *buf, void *v, size_t len)
{
	const u_char *p = FUNC2(buf);
	int r;

	if ((r = FUNC1(buf, len)) < 0)
		return r;
	if (v != NULL && len != 0)
		FUNC0(v, p, len);
	return 0;
}