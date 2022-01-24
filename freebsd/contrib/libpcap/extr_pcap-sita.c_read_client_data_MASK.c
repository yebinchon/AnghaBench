#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; int /*<<< orphan*/ * imsg; } ;
typedef  TYPE_1__ unit_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*,int*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (int fd) {
	unsigned char	buf[256];
	int				chassis, geoslot;
	unit_t			*u;
	int				len;

	FUNC0(fd, &chassis, &geoslot, &u);

	if ((len = FUNC3(fd, buf, sizeof(buf), 0)) <= 0)	return 0;	/* read in whatever data was sent to us */

	if ((u->imsg = FUNC2(u->imsg, (u->len + len))) == NULL)	/* extend the buffer for the new data */
		return 0;
	FUNC1((u->imsg + u->len), buf, len);						/* append the new data */
	u->len += len;
	return 1;
}