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
typedef  size_t u8 ;
struct sta_info {struct mbo_non_pref_chan_info* non_pref_chan; int /*<<< orphan*/  cell_capa; } ;
struct mbo_non_pref_chan_info {size_t num_channels; int /*<<< orphan*/ * channels; int /*<<< orphan*/  reason_code; int /*<<< orphan*/  pref; int /*<<< orphan*/  op_class; struct mbo_non_pref_chan_info* next; } ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 

int FUNC2(struct sta_info *sta, char *buf, size_t buflen)
{
	char *pos = buf, *end = buf + buflen;
	int ret;
	struct mbo_non_pref_chan_info *info;
	u8 i;
	unsigned int count = 0;

	if (!sta->cell_capa)
		return 0;

	ret = FUNC0(pos, end - pos, "mbo_cell_capa=%u\n", sta->cell_capa);
	if (FUNC1(end - pos, ret))
		return pos - buf;
	pos += ret;

	for (info = sta->non_pref_chan; info; info = info->next) {
		char *pos2 = pos;

		ret = FUNC0(pos2, end - pos2,
				  "non_pref_chan[%u]=%u:%u:%u:",
				  count, info->op_class, info->pref,
				  info->reason_code);
		count++;
		if (FUNC1(end - pos2, ret))
			break;
		pos2 += ret;

		for (i = 0; i < info->num_channels; i++) {
			ret = FUNC0(pos2, end - pos2, "%u%s",
					  info->channels[i],
					  i + 1 < info->num_channels ?
					  "," : "");
			if (FUNC1(end - pos2, ret)) {
				pos2 = NULL;
				break;
			}
			pos2 += ret;
		}

		if (!pos2)
			break;
		ret = FUNC0(pos2, end - pos2, "\n");
		if (FUNC1(end - pos2, ret))
			break;
		pos2 += ret;
		pos = pos2;
	}

	return pos - buf;
}