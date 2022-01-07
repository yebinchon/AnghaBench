
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t pam_facility_t ;


 int asprintf (char**,char*,char const*) ;
 char** pam_facility_name ;
 char toupper (unsigned char) ;

__attribute__((used)) static char *
openpam_facility_index_name(pam_facility_t fclt)
{
 const char *facility = pam_facility_name[fclt];
 char *name, *p;

 if (asprintf(&name, "PAM_%s", facility) == -1)
  return (((void*)0));
 for (p = name + 4; *p; ++p)
  *p = toupper((unsigned char)*p);
 return (name);
}
