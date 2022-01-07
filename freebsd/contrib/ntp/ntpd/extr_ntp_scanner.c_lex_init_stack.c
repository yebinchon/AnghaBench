
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int * lex_open (char const*,char const*) ;
 int * lex_stack ;

int
lex_init_stack(
 const char * path,
 const char * mode
 )
{
 if (((void*)0) != lex_stack || ((void*)0) == path)
  return FALSE;

 lex_stack = lex_open(path, mode);
 return (((void*)0) != lex_stack);
}
