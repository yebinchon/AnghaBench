
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ isspace (char) ;
 scalar_t__ use_color ;
 scalar_t__ use_dialog ;
 scalar_t__ use_libdialog ;

int
dialog_prompt_wrappedlines(char *prompt, int ncols, uint8_t nlstate)
{
 uint8_t backslash = 0;
 uint8_t nls = nlstate;
 char *cp;
 char *p = prompt;
 int n = 0;
 int wlines = 0;


 if (p == ((void*)0))
  return (0);
 if (*p == '\0')
  return (0);


 while (*p != '\0') {

  if (use_dialog || use_libdialog) {
   if (*p == '\n') {
    if (use_dialog || !nls)
     n = 0;
    nls = FALSE;
   }
  }


  if (*p == '\\') {

   if ((backslash ^= 1) == 0)
    n++;
  } else if (backslash) {
   if (*p == 'n' && !use_libdialog) {

    nls = TRUE;
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


  if (n > ncols) {





   cp = p;
   while (n > 1 && !isspace(*cp)) {
    cp--;
    n--;
   }
   if (n > 0 && isspace(*cp))
    p = cp;
   wlines++;
   n = 1;
  }

  p++;
 }

 return (wlines);
}
