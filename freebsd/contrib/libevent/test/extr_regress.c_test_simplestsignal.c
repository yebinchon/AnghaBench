
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setup_test (char*) ;
 int test_simplesignal_impl (int ) ;

__attribute__((used)) static void
test_simplestsignal(void)
{
 setup_test("Simplest one signal: ");
 test_simplesignal_impl(0);
}
