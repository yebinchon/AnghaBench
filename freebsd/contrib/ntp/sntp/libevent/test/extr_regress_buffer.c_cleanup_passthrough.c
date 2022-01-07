
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase_t {int dummy; } ;



__attribute__((used)) static int
cleanup_passthrough(const struct testcase_t *testcase, void *ptr)
{
 (void) ptr;
 return 1;
}
