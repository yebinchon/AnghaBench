
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foo {int dummy; } ;


 int printf (char*,struct foo*) ;

int
main(void) {

 struct foo *f = 0;
 printf("%p\n", &f[1]);
 return 0;
}
