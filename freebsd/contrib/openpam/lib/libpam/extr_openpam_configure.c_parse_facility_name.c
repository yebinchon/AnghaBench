
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_facility_t ;


 int PAM_NUM_FACILITIES ;
 int * pam_facility_name ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static pam_facility_t
parse_facility_name(const char *name)
{
 int i;

 for (i = 0; i < PAM_NUM_FACILITIES; ++i)
  if (strcmp(pam_facility_name[i], name) == 0)
   return (i);
 return ((pam_facility_t)-1);
}
