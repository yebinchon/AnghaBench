
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ use_dialog ;
 scalar_t__ use_libdialog ;

char *
dialog_prompt_lastline(char *prompt, uint8_t nlstate)
{
 uint8_t nls = nlstate;
 char *lastline;
 char *p;

 if (prompt == ((void*)0))
  return (((void*)0));
 if (*prompt == '\0')
  return (prompt);

 lastline = p = prompt;
 while (*p != '\0') {

  if (use_dialog || use_libdialog) {
   if (*p == '\n') {
    if (use_libdialog || !nls)
     lastline = p + 1;
    nls = FALSE;
   }
  }

  if (use_libdialog) {
   p++;
   continue;
  }
  if (*p == '\\' && *(p + 1) != '\0' && *(++p) == 'n') {
   nls = TRUE;
   lastline = p + 1;
  }
  p++;
 }

 return (lastline);
}
