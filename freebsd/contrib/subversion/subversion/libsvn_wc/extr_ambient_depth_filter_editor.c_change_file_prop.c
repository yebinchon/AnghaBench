
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct file_baton {int wrapped_baton; scalar_t__ ambiently_excluded; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* change_file_prop ) (int ,char const*,int const*,int *) ;} ;


 int * SVN_NO_ERROR ;
 int * stub1 (int ,char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;

  if (fb->ambiently_excluded)
    return SVN_NO_ERROR;

  return eb->wrapped_editor->change_file_prop(fb->wrapped_baton,
                                              name, value, pool);
}
