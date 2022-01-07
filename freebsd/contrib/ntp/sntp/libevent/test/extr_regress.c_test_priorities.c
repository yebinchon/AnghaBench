
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_ok ;
 int test_priorities_impl (int) ;

__attribute__((used)) static void
test_priorities(void)
{
 test_priorities_impl(1);
 if (test_ok)
  test_priorities_impl(2);
 if (test_ok)
  test_priorities_impl(3);
}
