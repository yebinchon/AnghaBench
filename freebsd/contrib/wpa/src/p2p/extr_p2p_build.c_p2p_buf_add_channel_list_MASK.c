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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct p2p_reg_class {int reg_class; int channels; char const* channel; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int P2P_ATTR_CHANNEL_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int) ; 

void FUNC5(struct wpabuf *buf, const char *country,
			      struct p2p_channels *chan)
{
	u8 *len;
	size_t i;

	/* Channel List */
	FUNC4(buf, P2P_ATTR_CHANNEL_LIST);
	len = FUNC2(buf, 2); /* IE length to be filled */
	FUNC3(buf, country, 3); /* Country String */

	for (i = 0; i < chan->reg_classes; i++) {
		struct p2p_reg_class *c = &chan->reg_class[i];
		FUNC4(buf, c->reg_class);
		FUNC4(buf, c->channels);
		FUNC3(buf, c->channel, c->channels);
	}

	/* Update attribute length */
	FUNC0(len, (u8 *) FUNC2(buf, 0) - len - 2);
	FUNC1(MSG_DEBUG, "P2P: * Channel List",
		    len + 2, (u8 *) FUNC2(buf, 0) - len - 2);
}