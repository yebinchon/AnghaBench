
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FILE_INFO {struct FILE_INFO* st_next; } ;


 int lex_close (struct FILE_INFO*) ;
 struct FILE_INFO* lex_stack ;

int
lex_pop_file(void)
{
 struct FILE_INFO * head = lex_stack;
 struct FILE_INFO * tail = ((void*)0);

 if (((void*)0) != head) {
  tail = head->st_next;
  if (((void*)0) != tail) {
   lex_stack = tail;
   lex_close(head);
  }
 }
 return (((void*)0) != tail);
}
