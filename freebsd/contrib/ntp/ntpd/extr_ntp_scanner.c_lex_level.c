
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FILE_INFO {struct FILE_INFO* st_next; } ;


 struct FILE_INFO* lex_stack ;

size_t
lex_level(void)
{
 size_t cnt = 0;
 struct FILE_INFO *ipf = lex_stack;

 while (((void*)0) != ipf) {
  cnt++;
  ipf = ipf->st_next;
 }
 return cnt;
}
