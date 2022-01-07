
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t pam_facility_t ;


 int asprintf (char**,char*,char const*,char const*) ;
 char** pam_facility_name ;

__attribute__((used)) static char *
openpam_chain_name(const char *service, pam_facility_t fclt)
{
 const char *facility = pam_facility_name[fclt];
 char *name;

 if (asprintf(&name, "pam_%s_%s", service, facility) == -1)
  return (((void*)0));
 return (name);
}
