
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 char* atf_tc_get_config_var (int const*,char*) ;
 int atf_tc_has_config_var (int const*,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static __inline bool
atf_check_fstype(const atf_tc_t *tc, const char *fs)
{
 const char *fstype;

 if (!atf_tc_has_config_var(tc, "fstype"))
  return 1;

 fstype = atf_tc_get_config_var(tc, "fstype");
 if (strcmp(fstype, fs) == 0)
  return 1;
 return 0;
}
