
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

void
string_trim_trailing_whitespace(char *string)
{
 char *end;

 if (*string == '\0')
  return;

 end = string + strlen(string) - 1;

 while (end != string) {
  if ((*end == ' ') || (*end == '\t')) {
   *end = '\0';
   end--;
  } else {
   return;
  }
 }

 return;
}
