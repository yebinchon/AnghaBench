
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ _nc_name_match (char const*,char*,char*) ;

__attribute__((used)) static bool
matches(char **needle, const char *haystack)

{
    bool code = FALSE;
    size_t n;

    if (needle != 0) {
 for (n = 0; needle[n] != 0; n++) {
     if (_nc_name_match(haystack, needle[n], "|")) {
  code = TRUE;
  break;
     }
 }
    } else
 code = TRUE;
    return (code);
}
