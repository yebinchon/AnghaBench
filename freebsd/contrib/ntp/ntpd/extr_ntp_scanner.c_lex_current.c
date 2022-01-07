
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FILE_INFO {int dummy; } ;


 struct FILE_INFO* lex_stack ;

struct FILE_INFO *
lex_current()
{



 return lex_stack;
}
