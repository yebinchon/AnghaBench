
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ repos; } ;
typedef TYPE_1__ authz_rule_t ;


 int strcmp (scalar_t__,scalar_t__) ;
 int svn_authz__compare_paths (TYPE_1__ const*,TYPE_1__ const*) ;

int
svn_authz__compare_rules(const authz_rule_t *a, const authz_rule_t *b)
{
  int diff = svn_authz__compare_paths(a, b);
  if (diff)
    return diff;


  if (a->repos != b->repos)
    return strcmp(a->repos, b->repos);

  return 0;
}
