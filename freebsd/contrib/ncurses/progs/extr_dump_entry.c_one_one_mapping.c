
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* ABSENT_STRING ;
 int FALSE ;
 int TRUE ;
 scalar_t__ isLine (char const) ;

__attribute__((used)) static bool
one_one_mapping(const char *mapping)
{
    bool result = TRUE;

    if (mapping != ABSENT_STRING) {
 int n = 0;
 while (mapping[n] != '\0') {
     if (isLine(mapping[n]) &&
  mapping[n] != mapping[n + 1]) {
  result = FALSE;
  break;
     }
     n += 2;
 }
    }
    return result;
}
