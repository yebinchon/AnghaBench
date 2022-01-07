
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int * (* delete_entry ) (char const*,int ,void*,int *) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 int * stub1 (char const*,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
path_driver_cb_func(void **dir_baton,
                    void *parent_baton,
                    void *callback_baton,
                    const char *path,
                    apr_pool_t *pool)
{
  const svn_delta_editor_t *editor = callback_baton;
  *dir_baton = ((void*)0);
  return editor->delete_entry(path, SVN_INVALID_REVNUM, parent_baton, pool);
}
