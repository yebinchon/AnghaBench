
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int strlen (char const*) ;

uint8_t
dialog_prompt_nlstate(const char *prompt)
{
 const char *cp;

 if (prompt == ((void*)0))
  return 0;




 cp = prompt + strlen(prompt);
 while (--cp >= prompt) {






  if (*cp == '\n')
   return (0);
  else if (*cp == 'n' && --cp > prompt && *cp == '\\')
   return (1);
 }

 return (0);
}
