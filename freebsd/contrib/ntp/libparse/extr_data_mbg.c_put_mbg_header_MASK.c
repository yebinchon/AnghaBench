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
struct TYPE_3__ {int /*<<< orphan*/  hdr_csum; int /*<<< orphan*/  data_csum; int /*<<< orphan*/  len; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ GPS_MSG_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**,int /*<<< orphan*/ ) ; 

void
FUNC1(
	unsigned char **bufpp,
	GPS_MSG_HDR *headerp
	)
{
  FUNC0(bufpp, headerp->cmd);
  FUNC0(bufpp, headerp->len);
  FUNC0(bufpp, headerp->data_csum);
  FUNC0(bufpp, headerp->hdr_csum);
}