
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int foo (int) ;

int
main(void)
{

 for (int i = 0; i < 10; i++)
  foo(i);


 for (int i = 0; i < 10; i++)
  continue;
 return 0;
}
