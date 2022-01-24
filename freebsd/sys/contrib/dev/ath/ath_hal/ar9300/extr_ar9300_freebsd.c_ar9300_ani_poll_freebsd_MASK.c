#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  survey ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  anistats ;
struct TYPE_8__ {int /*<<< orphan*/  rxframecnt_diff; int /*<<< orphan*/  rx_busy; int /*<<< orphan*/  txframecnt_diff; int /*<<< orphan*/  tx_busy; int /*<<< orphan*/  extrxclr_cnt; int /*<<< orphan*/  ext_chan_busy; int /*<<< orphan*/  rxclr_cnt; int /*<<< orphan*/  chan_busy; int /*<<< orphan*/  cyclecnt_diff; int /*<<< orphan*/  cycle_count; scalar_t__ valid; } ;
typedef  TYPE_1__ HAL_SURVEY_SAMPLE ;
typedef  TYPE_1__ HAL_NODE_STATS ;
typedef  TYPE_1__ HAL_ANISTATS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,TYPE_1__*,struct ieee80211_channel const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,TYPE_1__*) ; 

void
FUNC3(struct ath_hal *ah,
    const struct ieee80211_channel *chan)
{

	HAL_NODE_STATS stats;
	HAL_ANISTATS anistats;
	HAL_SURVEY_SAMPLE survey;

	FUNC0(&stats, sizeof(stats));
	FUNC0(&anistats, sizeof(anistats));
	FUNC0(&survey, sizeof(survey));

	FUNC1(ah, &stats, chan, &anistats);

	/*
	 * If ANI stats are valid, use them to update the
	 * channel survey.
	 */
	if (anistats.valid) {
		survey.cycle_count = anistats.cyclecnt_diff;
		survey.chan_busy = anistats.rxclr_cnt;
		survey.ext_chan_busy = anistats.extrxclr_cnt;
		survey.tx_busy = anistats.txframecnt_diff;
		survey.rx_busy = anistats.rxframecnt_diff;
		FUNC2(ah, &survey);
	}
}