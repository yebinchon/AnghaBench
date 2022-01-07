
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct testgroup_t {int dummy; } ;
struct TYPE_2__ {scalar_t__* tests; scalar_t__ name; } ;


 TYPE_1__* cfg_aliases ;
 int printf (char*,char const*) ;
 int process_test_option (struct testgroup_t*,scalar_t__) ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int
process_test_alias(struct testgroup_t *groups, const char *test)
{
 int i, j, n, r;
 for (i=0; cfg_aliases && cfg_aliases[i].name; ++i) {
  if (!strcmp(cfg_aliases[i].name, test)) {
   n = 0;
   for (j = 0; cfg_aliases[i].tests[j]; ++j) {
    r = process_test_option(groups, cfg_aliases[i].tests[j]);
    if (r<0)
     return -1;
    n += r;
   }
   return n;
  }
 }
 printf("No such test alias as @%s!",test);
 return -1;
}
