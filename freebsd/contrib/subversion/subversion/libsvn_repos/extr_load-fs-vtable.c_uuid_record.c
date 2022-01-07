
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
struct parse_baton {scalar_t__ uuid_action; int fs; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_fs_set_uuid (int ,char const*,int *) ;
 int svn_fs_youngest_rev (scalar_t__*,int ,int *) ;
 scalar_t__ svn_repos_load_uuid_force ;
 scalar_t__ svn_repos_load_uuid_ignore ;

__attribute__((used)) static svn_error_t *
uuid_record(const char *uuid,
            void *parse_baton,
            apr_pool_t *pool)
{
  struct parse_baton *pb = parse_baton;
  svn_revnum_t youngest_rev;

  if (pb->uuid_action == svn_repos_load_uuid_ignore)
    return SVN_NO_ERROR;

  if (pb->uuid_action != svn_repos_load_uuid_force)
    {
      SVN_ERR(svn_fs_youngest_rev(&youngest_rev, pb->fs, pool));
      if (youngest_rev != 0)
        return SVN_NO_ERROR;
    }

  return svn_fs_set_uuid(pb->fs, uuid, pool);
}
