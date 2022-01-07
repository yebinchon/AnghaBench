
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int chans_surveyed; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int acs_survey_all_chans_intereference_factor (struct hostapd_iface*) ;
 int acs_surveys_are_sufficient (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int acs_study_survey_based(struct hostapd_iface *iface)
{
 wpa_printf(MSG_DEBUG, "ACS: Trying survey-based ACS");

 if (!iface->chans_surveyed) {
  wpa_printf(MSG_ERROR, "ACS: Unable to collect survey data");
  return -1;
 }

 if (!acs_surveys_are_sufficient(iface)) {
  wpa_printf(MSG_ERROR, "ACS: Surveys have insufficient data");
  return -1;
 }

 acs_survey_all_chans_intereference_factor(iface);
 return 0;
}
