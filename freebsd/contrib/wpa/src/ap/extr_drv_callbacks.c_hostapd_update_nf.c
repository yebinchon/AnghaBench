
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {scalar_t__ lowest_nf; int chans_surveyed; } ;
struct hostapd_channel_data {scalar_t__ min_nf; int survey_list; } ;
struct freq_survey {scalar_t__ nf; } ;


 scalar_t__ dl_list_empty (int *) ;

__attribute__((used)) static void hostapd_update_nf(struct hostapd_iface *iface,
         struct hostapd_channel_data *chan,
         struct freq_survey *survey)
{
 if (!iface->chans_surveyed) {
  chan->min_nf = survey->nf;
  iface->lowest_nf = survey->nf;
 } else {
  if (dl_list_empty(&chan->survey_list))
   chan->min_nf = survey->nf;
  else if (survey->nf < chan->min_nf)
   chan->min_nf = survey->nf;
  if (survey->nf < iface->lowest_nf)
   iface->lowest_nf = survey->nf;
 }
}
