
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_survey {int filled; } ;


 int MSG_INFO ;
 int SURVEY_HAS_CHAN_TIME ;
 int SURVEY_HAS_CHAN_TIME_BUSY ;
 int SURVEY_HAS_CHAN_TIME_RX ;
 int SURVEY_HAS_NF ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int acs_survey_is_sufficient(struct freq_survey *survey)
{
 if (!(survey->filled & SURVEY_HAS_NF)) {
  wpa_printf(MSG_INFO, "ACS: Survey is missing noise floor");
  return 0;
 }

 if (!(survey->filled & SURVEY_HAS_CHAN_TIME)) {
  wpa_printf(MSG_INFO, "ACS: Survey is missing channel time");
  return 0;
 }

 if (!(survey->filled & SURVEY_HAS_CHAN_TIME_BUSY) &&
     !(survey->filled & SURVEY_HAS_CHAN_TIME_RX)) {
  wpa_printf(MSG_INFO,
      "ACS: Survey is missing RX and busy time (at least one is required)");
  return 0;
 }

 return 1;
}
