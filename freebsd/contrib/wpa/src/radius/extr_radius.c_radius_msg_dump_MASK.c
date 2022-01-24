#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct radius_msg {size_t attr_used; TYPE_1__* hdr; } ;
struct radius_attr_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  identifier; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct radius_attr_hdr* FUNC2 (struct radius_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_attr_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct radius_msg *msg)
{
	size_t i;

	FUNC4(MSG_INFO, "RADIUS message: code=%d (%s) identifier=%d length=%d",
		   msg->hdr->code, FUNC1(msg->hdr->code),
		   msg->hdr->identifier, FUNC0(msg->hdr->length));

	for (i = 0; i < msg->attr_used; i++) {
		struct radius_attr_hdr *attr = FUNC2(msg, i);
		FUNC3(attr);
	}
}