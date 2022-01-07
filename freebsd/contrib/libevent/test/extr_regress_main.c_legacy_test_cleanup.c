
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase_t {int dummy; } ;


 int basic_test_cleanup (struct testcase_t const*,void*) ;
 int * global_base ;
 int* pair ;

__attribute__((used)) static int
legacy_test_cleanup(const struct testcase_t *testcase, void *ptr)
{
 int r = basic_test_cleanup(testcase, ptr);
 pair[0] = pair[1] = -1;
 global_base = ((void*)0);
 return r;
}
