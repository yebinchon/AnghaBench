
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int baton; int base_revision; } ;
struct editor_baton {TYPE_2__ root; int edit_pool; int dedit_baton; TYPE_1__* deditor; } ;
struct TYPE_3__ {int (* open_root ) (int ,int ,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
start_edit_func(void *baton,
                svn_revnum_t base_revision)
{
  struct editor_baton *eb = baton;

  eb->root.base_revision = base_revision;




  SVN_ERR(eb->deditor->open_root(eb->dedit_baton, eb->root.base_revision,
                                 eb->edit_pool, &eb->root.baton));

  return SVN_NO_ERROR;
}
