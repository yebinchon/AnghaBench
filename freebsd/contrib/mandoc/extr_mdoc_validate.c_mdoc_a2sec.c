
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum roff_sec { ____Placeholder_roff_sec } roff_sec ;


 int SEC_CUSTOM ;
 scalar_t__ SEC__MAX ;
 scalar_t__* secnames ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

enum roff_sec
mdoc_a2sec(const char *p)
{
 int i;

 for (i = 0; i < (int)SEC__MAX; i++)
  if (secnames[i] && 0 == strcmp(p, secnames[i]))
   return (enum roff_sec)i;

 return SEC_CUSTOM;
}
