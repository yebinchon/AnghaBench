
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tail; int * head; } ;


 int MMAN_spc ;
 TYPE_1__ fontqueue ;
 int outflags ;
 int print_word (char*) ;
 int printf (char*) ;
 int putchar (int ) ;

__attribute__((used)) static void
font_pop(void)
{

 if (fontqueue.tail > fontqueue.head)
  fontqueue.tail--;
 outflags &= ~MMAN_spc;
 print_word("");
 printf("\\f");
 putchar(*fontqueue.tail);
}
