
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ use_dialog ;
 scalar_t__ use_libdialog ;

unsigned int
dialog_prompt_numlines(const char *prompt, uint8_t nlstate)
{
 uint8_t nls = nlstate;
 const char *cp = prompt;
 unsigned int nlines = 1;

 if (prompt == ((void*)0) || *prompt == '\0')
  return (0);

 while (*cp != '\0') {
  if (use_dialog) {
   if (strncmp(cp, "\\n", 2) == 0) {
    cp++;
    nlines++;
    nls = TRUE;
   } else if (*cp == '\n') {
    if (!nls)
     nlines++;
    nls = FALSE;
   }
  } else if (use_libdialog) {
   if (*cp == '\n')
    nlines++;
  } else if (strncmp(cp, "\\n", 2) == 0) {
   cp++;
   nlines++;
  }
  cp++;
 }

 return (nlines);
}
