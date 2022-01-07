
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct edit_baton {int externals; } ;
struct dir_baton {int path; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int add_externals (int ,int ,int const*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static svn_error_t *
change_dir_prop(void *dir_baton,
                const char *name,
                const svn_string_t *value,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  struct edit_baton *eb = db->edit_baton;

  if (value && (strcmp(name, SVN_PROP_EXTERNALS) == 0))
    SVN_ERR(add_externals(eb->externals, db->path, value));

  return SVN_NO_ERROR;
}
