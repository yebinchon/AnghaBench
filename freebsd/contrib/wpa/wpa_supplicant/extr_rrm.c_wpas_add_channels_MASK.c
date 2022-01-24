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
typedef  int u8 ;
struct oper_class_map {int max_chan; int min_chan; int inc; scalar_t__ bw; int /*<<< orphan*/  op_class; } ;
struct hostapd_hw_modes {int dummy; } ;
typedef  enum chan_allowed { ____Placeholder_chan_allowed } chan_allowed ;

/* Variables and functions */
 scalar_t__ BW160 ; 
 scalar_t__ BW80 ; 
 scalar_t__ BW80P80 ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int NOT_ALLOWED ; 
 int NO_IR ; 
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (struct hostapd_hw_modes*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int,int*) ; 

__attribute__((used)) static int * FUNC5(const struct oper_class_map *op,
			       struct hostapd_hw_modes *mode, int active,
			       const u8 *channels, const u8 size)
{
	int *freqs, *next_freq;
	u8 num_primary_channels, i;
	u8 num_chans;

	num_chans = channels ? size :
		(op->max_chan - op->min_chan) / op->inc + 1;

	if (op->bw == BW80 || op->bw == BW80P80)
		num_primary_channels = 4;
	else if (op->bw == BW160)
		num_primary_channels = 8;
	else
		num_primary_channels = 1;

	/* one extra place for the zero-terminator */
	freqs = FUNC0(num_chans * num_primary_channels + 1, sizeof(*freqs));
	if (!freqs) {
		FUNC3(MSG_ERROR,
			   "Beacon Report: Failed to allocate freqs array");
		return NULL;
	}

	next_freq = freqs;
	for  (i = 0; i < num_chans; i++) {
		u8 chan = channels ? channels[i] : op->min_chan + i * op->inc;
		enum chan_allowed res = FUNC2(mode, chan, op->bw);

		if (res == NOT_ALLOWED || (res == NO_IR && active))
			continue;

		if (FUNC4(op->op_class, chan, num_primary_channels,
				     next_freq) < 0) {
			FUNC1(freqs);
			return NULL;
		}

		next_freq += num_primary_channels;
	}

	if (!freqs[0]) {
		FUNC1(freqs);
		return NULL;
	}

	return freqs;
}