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
struct os_reltime {scalar_t__ sec; } ;
struct TYPE_2__ {scalar_t__ sec; } ;
struct bgscan_learn_data {scalar_t__ short_interval; scalar_t__ long_interval; scalar_t__ signal_threshold; scalar_t__ scan_interval; TYPE_1__ last_bgscan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  bgscan_learn_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bgscan_learn_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bgscan_learn_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(void *priv, int above,
					      int current_signal,
					      int current_noise,
					      int current_txrate)
{
	struct bgscan_learn_data *data = priv;
	int scan = 0;
	struct os_reltime now;

	if (data->short_interval == data->long_interval ||
	    data->signal_threshold == 0)
		return;

	FUNC3(MSG_DEBUG, "bgscan learn: signal level changed "
		   "(above=%d current_signal=%d current_noise=%d "
		   "current_txrate=%d)", above, current_signal,
		   current_noise, current_txrate);
	if (data->scan_interval == data->long_interval && !above) {
		FUNC3(MSG_DEBUG, "bgscan learn: Start using short bgscan "
			   "interval");
		data->scan_interval = data->short_interval;
		FUNC2(&now);
		if (now.sec > data->last_bgscan.sec + 1)
			scan = 1;
	} else if (data->scan_interval == data->short_interval && above) {
		FUNC3(MSG_DEBUG, "bgscan learn: Start using long bgscan "
			   "interval");
		data->scan_interval = data->long_interval;
		FUNC0(bgscan_learn_timeout, data, NULL);
		FUNC1(data->scan_interval, 0,
				       bgscan_learn_timeout, data, NULL);
	} else if (!above) {
		/*
		 * Signal dropped further 4 dB. Request a new scan if we have
		 * not yet scanned in a while.
		 */
		FUNC2(&now);
		if (now.sec > data->last_bgscan.sec + 10)
			scan = 1;
	}

	if (scan) {
		FUNC3(MSG_DEBUG, "bgscan learn: Trigger immediate scan");
		FUNC0(bgscan_learn_timeout, data, NULL);
		FUNC1(0, 0, bgscan_learn_timeout, data, NULL);
	}
}