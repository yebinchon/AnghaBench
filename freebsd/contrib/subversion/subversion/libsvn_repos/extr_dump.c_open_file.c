
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct edit_baton {int dummy; } ;
struct dir_baton {int cmp_rev; int cmp_path; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 scalar_t__ ARE_VALID_COPY_ARGS (int ,int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int dump_node (struct edit_baton*,char const*,int ,int ,int ,char const*,int ,int *) ;
 int svn_node_action_change ;
 int svn_node_file ;
 int svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_join (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
open_file(const char *path,
          void *parent_baton,
          svn_revnum_t ancestor_revision,
          apr_pool_t *pool,
          void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = pb->edit_baton;
  const char *cmp_path = ((void*)0);
  svn_revnum_t cmp_rev = SVN_INVALID_REVNUM;



  if (ARE_VALID_COPY_ARGS(pb->cmp_path, pb->cmp_rev))
    {
      cmp_path = svn_relpath_join(pb->cmp_path,
                                  svn_relpath_basename(path, pool), pool);
      cmp_rev = pb->cmp_rev;
    }

  SVN_ERR(dump_node(eb, path,
                    svn_node_file, svn_node_action_change,
                    FALSE, cmp_path, cmp_rev, pool));

  *file_baton = ((void*)0);
  return SVN_NO_ERROR;
}
