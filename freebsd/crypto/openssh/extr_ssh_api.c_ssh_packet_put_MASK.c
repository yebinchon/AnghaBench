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
struct ssh {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ssh*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (struct ssh*) ; 
 int FUNC2 (struct ssh*,int) ; 

int
FUNC3(struct ssh *ssh, int type, const u_char *data, size_t len)
{
	int r;

	if ((r = FUNC2(ssh, type)) != 0 ||
	    (r = FUNC0(ssh, data, len)) != 0 ||
	    (r = FUNC1(ssh)) != 0)
		return r;
	return 0;
}