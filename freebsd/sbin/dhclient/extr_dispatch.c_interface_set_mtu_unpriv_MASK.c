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
struct imsg_hdr {int len; int /*<<< orphan*/  code; } ;
typedef  struct imsg_hdr u_int16_t ;
struct buf {int dummy; } ;
typedef  int /*<<< orphan*/  mtu ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 int /*<<< orphan*/  IMSG_SET_INTERFACE_MTU ; 
 scalar_t__ FUNC0 (struct buf*,struct imsg_hdr*,int) ; 
 int FUNC1 (int,struct buf*) ; 
 struct buf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(int privfd, u_int16_t mtu)
{
	struct imsg_hdr hdr;
	struct buf *buf;
	int errs = 0;

	hdr.code = IMSG_SET_INTERFACE_MTU;
	hdr.len = sizeof(hdr) +
		sizeof(u_int16_t);

	if ((buf = FUNC2(hdr.len)) == NULL)
		FUNC3("buf_open: %m");

	errs += FUNC0(buf, &hdr, sizeof(hdr));
	errs += FUNC0(buf, &mtu, sizeof(mtu));
	if (errs)
		FUNC3("buf_add: %m");
	
	if (FUNC1(privfd, buf) == -1)
		FUNC3("buf_close: %m");
}