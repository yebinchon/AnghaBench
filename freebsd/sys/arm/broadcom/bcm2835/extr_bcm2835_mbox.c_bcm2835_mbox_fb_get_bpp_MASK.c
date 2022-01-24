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
struct TYPE_7__ {int /*<<< orphan*/  bpp; } ;
struct TYPE_8__ {TYPE_2__ resp; } ;
struct TYPE_6__ {scalar_t__ val_len; } ;
struct TYPE_10__ {TYPE_3__ body; TYPE_1__ tag_hdr; } ;
struct TYPE_9__ {int buf_size; int /*<<< orphan*/  code; } ;
struct msg_fb_get_bpp {TYPE_5__ bpp; scalar_t__ end_tag; TYPE_4__ hdr; } ;
struct bcm2835_fb_config {int /*<<< orphan*/  bpp; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_MBOX_CODE_REQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GET_DEPTH ; 
 int FUNC1 (struct msg_fb_get_bpp*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msg_fb_get_bpp*,int /*<<< orphan*/ ,int) ; 

int
FUNC3(struct bcm2835_fb_config *fb)
{
	int err;
	struct msg_fb_get_bpp msg;
	
	FUNC2(&msg, 0, sizeof(msg));
	msg.hdr.buf_size = sizeof(msg);
	msg.hdr.code = BCM2835_MBOX_CODE_REQ;
	FUNC0(&msg.bpp, GET_DEPTH);
	msg.bpp.tag_hdr.val_len = 0;
	msg.end_tag = 0;
	
	err = FUNC1(&msg, sizeof(msg));
	if (err == 0)
		fb->bpp = msg.bpp.body.resp.bpp;
	
	return (err);
}