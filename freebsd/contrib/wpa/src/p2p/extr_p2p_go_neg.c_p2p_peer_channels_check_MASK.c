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
typedef  int u8 ;
struct p2p_reg_class {int channels; int /*<<< orphan*/  channel; int /*<<< orphan*/  reg_class; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;
struct p2p_device {struct p2p_channels channels; int /*<<< orphan*/  country; } ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * country; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t P2P_MAX_REG_CLASSES ; 
 int P2P_MAX_REG_CLASS_CHANNELS ; 
 scalar_t__ FUNC0 (int const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_channels*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_channels*,struct p2p_channels*,struct p2p_channels*) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int const*,int) ; 

int FUNC7(struct p2p_data *p2p, struct p2p_channels *own,
			    struct p2p_device *dev,
			    const u8 *channel_list, size_t channel_list_len)
{
	const u8 *pos, *end;
	struct p2p_channels *ch;
	u8 channels;
	struct p2p_channels intersection;

	ch = &dev->channels;
	FUNC2(ch, 0, sizeof(*ch));
	pos = channel_list;
	end = channel_list + channel_list_len;

	if (end - pos < 3)
		return -1;
	FUNC1(dev->country, pos, 3);
	FUNC6(MSG_DEBUG, "P2P: Peer country", pos, 3);
	if (pos[2] != 0x04 && FUNC0(pos, p2p->cfg->country, 2) != 0) {
		FUNC5(p2p, "Mismatching country (ours=%c%c peer's=%c%c)",
			p2p->cfg->country[0], p2p->cfg->country[1],
			pos[0], pos[1]);
		return -1;
	}
	pos += 3;

	while (end - pos > 2) {
		struct p2p_reg_class *cl = &ch->reg_class[ch->reg_classes];
		cl->reg_class = *pos++;
		channels = *pos++;
		if (channels > end - pos) {
			FUNC5(p2p, "Invalid peer Channel List");
			return -1;
		}
		cl->channels = channels > P2P_MAX_REG_CLASS_CHANNELS ?
			P2P_MAX_REG_CLASS_CHANNELS : channels;
		FUNC1(cl->channel, pos, cl->channels);
		pos += channels;
		ch->reg_classes++;
		if (ch->reg_classes == P2P_MAX_REG_CLASSES)
			break;
	}

	FUNC3(own, &dev->channels, &intersection);
	FUNC4(p2p, "Own reg_classes %d peer reg_classes %d intersection reg_classes %d",
		(int) own->reg_classes,
		(int) dev->channels.reg_classes,
		(int) intersection.reg_classes);
	if (intersection.reg_classes == 0) {
		FUNC5(p2p, "No common channels found");
		return -1;
	}
	return 0;
}