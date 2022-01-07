
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_control_t ;


 int PAM_NUM_CONTROL_FLAGS ;
 int * pam_control_flag_name ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static pam_control_t
parse_control_flag(const char *name)
{
 int i;

 for (i = 0; i < PAM_NUM_CONTROL_FLAGS; ++i)
  if (strcmp(pam_control_flag_name[i], name) == 0)
   return (i);
 return ((pam_control_t)-1);
}
