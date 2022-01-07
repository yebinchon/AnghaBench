
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OPENPAM_FEATURE (int ) ;
 int RESTRICT_MODULE_NAME ;
 int is_pfcs (char const) ;

__attribute__((used)) static int
valid_module_name(const char *name)
{
 const char *p;

 if (OPENPAM_FEATURE(RESTRICT_MODULE_NAME)) {

  for (p = name; *p != '\0'; ++p)
   if (!is_pfcs(*p))
    return (0);
 } else {

  for (p = name; *p != '\0'; ++p)
   if (!is_pfcs(*p) && *p != '/')
    return (0);
 }
 return (1);
}
