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
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {size_t ssid_postfix_len; int /*<<< orphan*/  ssid_postfix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t) ; 

int FUNC3(struct p2p_data *p2p, const u8 *postfix, size_t len)
{
	FUNC1(p2p, "New SSID postfix: %s", FUNC2(postfix, len));
	if (postfix == NULL) {
		p2p->cfg->ssid_postfix_len = 0;
		return 0;
	}
	if (len > sizeof(p2p->cfg->ssid_postfix))
		return -1;
	FUNC0(p2p->cfg->ssid_postfix, postfix, len);
	p2p->cfg->ssid_postfix_len = len;
	return 0;
}