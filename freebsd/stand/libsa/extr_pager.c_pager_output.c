
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getchar () ;
 scalar_t__ p_freelines ;
 scalar_t__ p_maxlines ;
 char* pager_blank ;
 char* pager_prompt1 ;
 int printf (char*,char*) ;
 int putchar (char const) ;

int
pager_output(const char *cp)
{
    int action;

    if (cp == ((void*)0))
 return(0);

    for (;;) {
 if (*cp == 0)
     return(0);

 putchar(*cp);

 if (*(cp++) == '\n') {
     p_freelines--;
     if (p_freelines <= 0) {
  printf("%s", pager_prompt1);
  action = 0;
  while (action == 0) {
      switch(getchar()) {
      case '\r':
      case '\n':
   p_freelines = 1;
   action = 1;
   break;
      case ' ':
   p_freelines = p_maxlines;
   action = 1;
   break;
      case 'q':
      case 'Q':
   action = 2;
   break;
      default:
   break;
      }
  }
  printf("\r%s\r", pager_blank);
  if (action == 2)
      return(1);
     }
 }
    }
}
