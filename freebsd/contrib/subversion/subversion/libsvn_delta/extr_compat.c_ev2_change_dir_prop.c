
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct ev2_dir_baton {int base_revision; int path; int eb; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apply_propedit (int ,int ,int ,int ,char const*,int const*,int *) ;
 int svn_node_dir ;

__attribute__((used)) static svn_error_t *
ev2_change_dir_prop(void *dir_baton,
                    const char *name,
                    const svn_string_t *value,
                    apr_pool_t *scratch_pool)
{
  struct ev2_dir_baton *db = dir_baton;

  SVN_ERR(apply_propedit(db->eb, db->path, svn_node_dir, db->base_revision,
                         name, value, scratch_pool));

  return SVN_NO_ERROR;
}
