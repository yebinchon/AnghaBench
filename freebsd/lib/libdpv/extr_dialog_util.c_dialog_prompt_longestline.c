
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ use_color ;
 scalar_t__ use_dialog ;
 scalar_t__ use_libdialog ;

unsigned int
dialog_prompt_longestline(const char *prompt, uint8_t nlstate)
{
 uint8_t backslash = 0;
 uint8_t nls = nlstate;
 const char *p = prompt;
 int longest = 0;
 int n = 0;


 if (prompt == ((void*)0))
  return (0);
 if (*prompt == '\0')
  return (0);


 while (*p != '\0') {

  if (use_dialog || use_libdialog) {
   if (*p == '\n') {
    if (!use_libdialog && nls)
     n++;
    else {
     if (n > longest)
      longest = n;
     n = 0;
    }
    nls = FALSE;
    p++;
    continue;
   }
  }


  if (*p == '\\') {

   if ((backslash ^= 1) == 0)
    n++;
  } else if (backslash) {
   if (*p == 'n' && !use_libdialog) {

    nls = TRUE;
    if (n > longest)
     longest = n;
    n = 0;
   } else if (use_color && *p == 'Z') {
    if (*++p != '\0')
     p++;
    backslash = 0;
    continue;
   } else
    n += 2;

   backslash = 0;
  } else
   n++;
  p++;
 }
 if (n > longest)
  longest = n;

 return (longest);
}
