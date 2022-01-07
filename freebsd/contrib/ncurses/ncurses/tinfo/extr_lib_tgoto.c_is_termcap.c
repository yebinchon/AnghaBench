
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static bool
is_termcap(const char *string)
{
    bool result = TRUE;

    if (string == 0 || *string == '\0') {
 result = FALSE;
    } else {
 while ((*string != '\0') && result) {
     if (*string == '%') {
  switch (*++string) {
  case 'p':
      result = FALSE;
      break;
  case '\0':
      string--;
      break;
  }
     } else if (string[0] == '$' && string[1] == '<') {
  result = FALSE;
     }
     string++;
 }
    }
    return result;
}
