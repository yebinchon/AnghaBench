
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int UChar (char const) ;
 int assert (int) ;
 scalar_t__ toupper (int ) ;

__attribute__((used)) static bool
Is_Sub_String(
        bool IgnoreCaseFlag,
        const char *part,
        const char *string
)
{
  assert(part && string);
  if (IgnoreCaseFlag)
    {
      while (*string && *part)
 {
   if (toupper(UChar(*string++)) != toupper(UChar(*part)))
     break;
   part++;
 }
    }
  else
    {
      while (*string && *part)
 if (*part != *string++)
   break;
      part++;
    }
  return ((*part) ? FALSE : TRUE);
}
