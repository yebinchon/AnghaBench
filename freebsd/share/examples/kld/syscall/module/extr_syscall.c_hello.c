
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int printf (char*) ;

__attribute__((used)) static int
hello(struct thread *td, void *arg)
{

 printf("hello kernel\n");
 return (0);
}
