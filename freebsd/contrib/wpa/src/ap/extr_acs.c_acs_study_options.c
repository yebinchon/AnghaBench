
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 scalar_t__ acs_study_survey_based (struct hostapd_iface*) ;

__attribute__((used)) static int acs_study_options(struct hostapd_iface *iface)
{
 if (acs_study_survey_based(iface) == 0)
  return 0;




 return -1;
}
