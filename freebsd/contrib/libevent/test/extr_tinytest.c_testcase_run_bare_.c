
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct testcase_t {TYPE_1__* setup; int (* fn ) (void*) ;} ;
typedef enum outcome { ____Placeholder_outcome } outcome ;
struct TYPE_2__ {scalar_t__ (* cleanup_fn ) (struct testcase_t const*,void*) ;void* (* setup_fn ) (struct testcase_t const*) ;} ;


 int FAIL ;
 int OK ;
 int SKIP ;
 scalar_t__ TT_SKIP ;
 int cur_test_outcome ;
 void* stub1 (struct testcase_t const*) ;
 int stub2 (void*) ;
 scalar_t__ stub3 (struct testcase_t const*,void*) ;

__attribute__((used)) static enum outcome
testcase_run_bare_(const struct testcase_t *testcase)
{
 void *env = ((void*)0);
 int outcome;
 if (testcase->setup) {
  env = testcase->setup->setup_fn(testcase);
  if (!env)
   return FAIL;
  else if (env == (void*)TT_SKIP)
   return SKIP;
 }

 cur_test_outcome = OK;
 testcase->fn(env);
 outcome = cur_test_outcome;

 if (testcase->setup) {
  if (testcase->setup->cleanup_fn(testcase, env) == 0)
   outcome = FAIL;
 }

 return outcome;
}
