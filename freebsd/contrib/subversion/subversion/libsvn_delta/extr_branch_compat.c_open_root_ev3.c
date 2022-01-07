
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int ev1_root_dir_baton; int edit_pool; int dedit_baton; TYPE_1__* deditor; } ;
typedef TYPE_2__ svn_branch__txn_priv_t ;
struct TYPE_3__ {int (* open_root ) (int ,int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
open_root_ev3(void *baton,
              svn_revnum_t base_revision)
{
  svn_branch__txn_priv_t *eb = baton;

  SVN_ERR(eb->deditor->open_root(eb->dedit_baton, base_revision,
                                 eb->edit_pool, &eb->ev1_root_dir_baton));
  return SVN_NO_ERROR;
}
