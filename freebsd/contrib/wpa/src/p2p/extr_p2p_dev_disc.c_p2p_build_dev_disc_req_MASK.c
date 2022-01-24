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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p_device_addr; } ;
struct p2p_device {int dialog_token; int /*<<< orphan*/  oper_ssid_len; int /*<<< orphan*/  oper_ssid; TYPE_1__ info; } ;
struct p2p_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_DEV_DISC_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC5 (int) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct p2p_data *p2p,
					      struct p2p_device *go,
					      const u8 *dev_id)
{
	struct wpabuf *buf;
	u8 *len;

	buf = FUNC5(100);
	if (buf == NULL)
		return NULL;

	go->dialog_token++;
	if (go->dialog_token == 0)
		go->dialog_token = 1;
	FUNC3(buf, P2P_DEV_DISC_REQ, go->dialog_token);

	len = FUNC2(buf);
	FUNC0(buf, dev_id);
	FUNC1(buf, go->info.p2p_device_addr, go->oper_ssid,
			     go->oper_ssid_len);
	FUNC4(buf, len);

	return buf;
}