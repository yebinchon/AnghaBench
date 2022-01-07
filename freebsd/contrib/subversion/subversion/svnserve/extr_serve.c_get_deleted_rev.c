
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_8__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int fs; TYPE_1__* fs_path; } ;
struct TYPE_6__ {int data; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int log_command (TYPE_3__*,int *,int *,char*) ;
 char* svn_fspath__join (int ,int ,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,int *,int *) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*,int ) ;
 int svn_relpath_canonicalize (char const*,int *) ;
 int svn_repos_deleted_rev (int ,char const*,int ,int ,int *,int *) ;
 int trivial_auth_request (int *,int *,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
get_deleted_rev(svn_ra_svn_conn_t *conn,
                apr_pool_t *pool,
                svn_ra_svn__list_t *params,
                void *baton)
{
  server_baton_t *b = baton;
  const char *path, *full_path;
  svn_revnum_t peg_revision;
  svn_revnum_t end_revision;
  svn_revnum_t revision_deleted;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "crr",
                                 &path, &peg_revision, &end_revision));
  full_path = svn_fspath__join(b->repository->fs_path->data,
                               svn_relpath_canonicalize(path, pool), pool);
  SVN_ERR(log_command(b, conn, pool, "get-deleted-rev"));
  SVN_ERR(trivial_auth_request(conn, pool, b));
  SVN_ERR(svn_repos_deleted_rev(b->repository->fs, full_path, peg_revision,
                                end_revision, &revision_deleted, pool));
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, "r", revision_deleted));
  return SVN_NO_ERROR;
}
