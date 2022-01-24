#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  rate_hz; } ;
struct TYPE_8__ {int /*<<< orphan*/  clock_id; } ;
struct TYPE_10__ {TYPE_4__ resp; TYPE_3__ req; } ;
struct TYPE_7__ {int val_buf_size; int val_len; int /*<<< orphan*/  tag; } ;
struct TYPE_6__ {int buf_size; int /*<<< orphan*/  code; } ;
struct msg_get_clock_rate {TYPE_5__ body; scalar_t__ end_tag; TYPE_2__ tag_hdr; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_MBOX_CODE_REQ ; 
 int /*<<< orphan*/  BCM2835_MBOX_TAG_GET_CLOCK_RATE ; 
 int FUNC0 (struct msg_get_clock_rate*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct msg_get_clock_rate*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(uint32_t clock_id, uint32_t *hz)
{
	struct msg_get_clock_rate msg;
	int err;

	FUNC1(&msg, 0, sizeof(msg));
	msg.hdr.buf_size = sizeof(msg);
	msg.hdr.code = BCM2835_MBOX_CODE_REQ;
	msg.tag_hdr.tag = BCM2835_MBOX_TAG_GET_CLOCK_RATE;
	msg.tag_hdr.val_buf_size = sizeof(msg.body);
	msg.tag_hdr.val_len = sizeof(msg.body.req);
	msg.body.req.clock_id = clock_id;
	msg.end_tag = 0;

	err = FUNC0(&msg, sizeof(msg));
	*hz = msg.body.resp.rate_hz;

	return (err);
}