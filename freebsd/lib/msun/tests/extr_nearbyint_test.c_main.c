
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int nitems (int ) ;
 int printf (char*,size_t) ;
 int test_modf (unsigned int) ;
 int test_nearby (unsigned int) ;
 int testnum ;
 int tests ;

int
main(void)
{
 unsigned i;

 printf("1..%zu\n", (size_t)(nitems(tests) * 2));
 testnum = 1;
 for (i = 0; i < nitems(tests); i++) {
  test_nearby(i);
  test_modf(i);
 }

 return (0);
}
