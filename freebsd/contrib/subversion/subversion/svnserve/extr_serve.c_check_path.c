
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
typedef int svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_8__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int fs; TYPE_1__* fs_path; } ;
struct TYPE_6__ {int data; } ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int log_command (TYPE_3__*,int *,int *,char*,int ,int ) ;
 int must_have_access (int *,int *,TYPE_3__*,int ,char const*,int ) ;
 int svn_authz_read ;
 int svn_fs_check_path (int *,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_youngest_rev (int *,int ,int *) ;
 char* svn_fspath__join (int ,int ,int *) ;
 int svn_node_kind_to_word (int ) ;
 int svn_path_uri_encode (char const*,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,int *) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*,int ) ;
 int svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
check_path(svn_ra_svn_conn_t *conn,
           apr_pool_t *pool,
           svn_ra_svn__list_t *params,
           void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *path, *full_path;
  svn_fs_root_t *root;
  svn_node_kind_t kind;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "c(?r)", &path, &rev));
  full_path = svn_fspath__join(b->repository->fs_path->data,
                               svn_relpath_canonicalize(path, pool), pool);


  SVN_ERR(must_have_access(conn, pool, b, svn_authz_read,
                           full_path, FALSE));

  if (!SVN_IS_VALID_REVNUM(rev))
    SVN_CMD_ERR(svn_fs_youngest_rev(&rev, b->repository->fs, pool));

  SVN_ERR(log_command(b, conn, pool, "check-path %s@%d",
                      svn_path_uri_encode(full_path, pool), rev));

  SVN_CMD_ERR(svn_fs_revision_root(&root, b->repository->fs, rev, pool));
  SVN_CMD_ERR(svn_fs_check_path(&kind, root, full_path, pool));
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, "w",
                                         svn_node_kind_to_word(kind)));
  return SVN_NO_ERROR;
}
