
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FILE_INFO {struct FILE_INFO* st_next; } ;


 int lex_close (struct FILE_INFO*) ;

__attribute__((used)) static struct FILE_INFO *
_drop_stack_do(
 struct FILE_INFO * head
 )
{
 struct FILE_INFO * tail;
 while (((void*)0) != head) {
  tail = head->st_next;
  lex_close(head);
  head = tail;
 }
 return head;
}
