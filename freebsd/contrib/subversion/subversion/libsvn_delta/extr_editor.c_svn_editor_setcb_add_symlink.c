
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int cb_add_symlink; } ;
struct TYPE_5__ {TYPE_1__ funcs; } ;
typedef TYPE_2__ svn_editor_t ;
typedef int svn_editor_cb_add_symlink_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_editor_setcb_add_symlink(svn_editor_t *editor,
                             svn_editor_cb_add_symlink_t callback,
                             apr_pool_t *scratch_pool)
{
  editor->funcs.cb_add_symlink = callback;
  return SVN_NO_ERROR;
}
