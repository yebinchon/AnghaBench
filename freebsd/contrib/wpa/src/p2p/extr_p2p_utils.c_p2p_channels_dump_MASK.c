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
struct p2p_reg_class {size_t channels; int /*<<< orphan*/ * channel; int /*<<< orphan*/  reg_class; } ;
struct p2p_data {int dummy; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,char*,char const*,char*) ; 

void FUNC3(struct p2p_data *p2p, const char *title,
		       const struct p2p_channels *chan)
{
	char buf[500], *pos, *end;
	size_t i, j;
	int ret;

	pos = buf;
	end = pos + sizeof(buf);

	for (i = 0; i < chan->reg_classes; i++) {
		const struct p2p_reg_class *c;
		c = &chan->reg_class[i];
		ret = FUNC0(pos, end - pos, " %u:", c->reg_class);
		if (FUNC1(end - pos, ret))
			break;
		pos += ret;

		for (j = 0; j < c->channels; j++) {
			ret = FUNC0(pos, end - pos, "%s%u",
					  j == 0 ? "" : ",",
					  c->channel[j]);
			if (FUNC1(end - pos, ret))
				break;
			pos += ret;
		}
	}
	*pos = '\0';

	FUNC2(p2p, "%s:%s", title, buf);
}