
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FILE_INFO {struct FILE_INFO* st_next; } ;


 struct FILE_INFO* lex_open (char const*,char const*) ;
 struct FILE_INFO* lex_stack ;

int lex_push_file(
 const char * path,
 const char * mode
 )
{
 struct FILE_INFO * next = ((void*)0);

 if (((void*)0) != path) {
  next = lex_open(path, mode);
  if (((void*)0) != next) {
   next->st_next = lex_stack;
   lex_stack = next;
  }
 }
 return (((void*)0) != next);
}
