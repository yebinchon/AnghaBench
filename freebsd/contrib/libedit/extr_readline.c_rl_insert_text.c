
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * e ;
 scalar_t__ el_insertstr (int *,char const*) ;
 int * h ;
 int rl_initialize () ;
 scalar_t__ strlen (char const*) ;

int
rl_insert_text(const char *text)
{
 if (!text || *text == 0)
  return 0;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 if (el_insertstr(e, text) < 0)
  return 0;
 return (int)strlen(text);
}
