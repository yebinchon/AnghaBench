
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int) ;
 int test_failed ;
 int test_passed ;

__attribute__((used)) static void test(int (*func)(void), const char *name) {
 int r = func();
 if (r == 0) {
  test_passed++;
 } else {
  test_failed++;
  printf("FAILED: %s (at line %d)\n", name, r);
 }
}
