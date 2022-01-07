
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int survey ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
typedef int stats ;
typedef int anistats ;
struct TYPE_8__ {int rxframecnt_diff; int rx_busy; int txframecnt_diff; int tx_busy; int extrxclr_cnt; int ext_chan_busy; int rxclr_cnt; int chan_busy; int cyclecnt_diff; int cycle_count; scalar_t__ valid; } ;
typedef TYPE_1__ HAL_SURVEY_SAMPLE ;
typedef TYPE_1__ HAL_NODE_STATS ;
typedef TYPE_1__ HAL_ANISTATS ;


 int OS_MEMZERO (TYPE_1__*,int) ;
 int ar9300_ani_ar_poll (struct ath_hal*,TYPE_1__*,struct ieee80211_channel const*,TYPE_1__*) ;
 int ath_hal_survey_add_sample (struct ath_hal*,TYPE_1__*) ;

void
ar9300_ani_poll_freebsd(struct ath_hal *ah,
    const struct ieee80211_channel *chan)
{

 HAL_NODE_STATS stats;
 HAL_ANISTATS anistats;
 HAL_SURVEY_SAMPLE survey;

 OS_MEMZERO(&stats, sizeof(stats));
 OS_MEMZERO(&anistats, sizeof(anistats));
 OS_MEMZERO(&survey, sizeof(survey));

 ar9300_ani_ar_poll(ah, &stats, chan, &anistats);





 if (anistats.valid) {
  survey.cycle_count = anistats.cyclecnt_diff;
  survey.chan_busy = anistats.rxclr_cnt;
  survey.ext_chan_busy = anistats.extrxclr_cnt;
  survey.tx_busy = anistats.txframecnt_diff;
  survey.rx_busy = anistats.rxframecnt_diff;
  ath_hal_survey_add_sample(ah, &survey);
 }
}
