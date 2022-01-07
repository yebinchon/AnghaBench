
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct edit_baton {TYPE_1__* wrapped_editor; } ;
struct dir_baton {int wrapped_baton; scalar_t__ ambiently_excluded; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* change_dir_prop ) (int ,char const*,int const*,int *) ;} ;


 int * SVN_NO_ERROR ;
 int * stub1 (int ,char const*,int const*,int *) ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  struct edit_baton *eb = db->edit_baton;

  if (db->ambiently_excluded)
    return SVN_NO_ERROR;

  return eb->wrapped_editor->change_dir_prop(db->wrapped_baton,
                                             name, value, pool);
}
