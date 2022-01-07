
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int base_rev; int repos; } ;
typedef TYPE_1__ svn_branch__txn_t ;


 TYPE_1__* svn_branch__repos_get_revision (int ,int ) ;

svn_branch__txn_t *
svn_branch__repos_get_base_revision_root(svn_branch__txn_t *rev_root)
{
  return svn_branch__repos_get_revision(rev_root->repos, rev_root->base_rev);
}
