
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_survey {int filled; long double channel_time_busy; long double channel_time_rx; long double channel_time; long double nf; scalar_t__ channel_time_tx; } ;
typedef scalar_t__ s8 ;


 int MSG_ERROR ;
 int SURVEY_HAS_CHAN_TIME_BUSY ;
 int SURVEY_HAS_CHAN_TIME_RX ;
 int SURVEY_HAS_CHAN_TIME_TX ;
 long double pow (int,long double) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static long double
acs_survey_interference_factor(struct freq_survey *survey, s8 min_nf)
{
 long double factor, busy, total;

 if (survey->filled & SURVEY_HAS_CHAN_TIME_BUSY)
  busy = survey->channel_time_busy;
 else if (survey->filled & SURVEY_HAS_CHAN_TIME_RX)
  busy = survey->channel_time_rx;
 else {


  wpa_printf(MSG_ERROR, "ACS: Survey data missing");
  return 0;
 }

 total = survey->channel_time;

 if (survey->filled & SURVEY_HAS_CHAN_TIME_TX) {
  busy -= survey->channel_time_tx;
  total -= survey->channel_time_tx;
 }


 factor = pow(10, survey->nf / 5.0L) +
  (total ? (busy / total) : 0) *
  pow(2, pow(10, (long double) survey->nf / 10.0L) -
      pow(10, (long double) min_nf / 10.0L));

 return factor;
}
