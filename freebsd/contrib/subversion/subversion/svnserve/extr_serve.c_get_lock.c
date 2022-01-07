
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_lock_t ;
typedef int svn_error_t ;
struct TYPE_8__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int fs; TYPE_1__* fs_path; } ;
struct TYPE_6__ {int data; } ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int log_command (TYPE_3__*,int *,int *,char*,int ) ;
 int must_have_access (int *,int *,TYPE_3__*,int ,char const*,int ) ;
 int svn_authz_read ;
 int svn_fs_get_lock (int **,int ,char const*,int *) ;
 char* svn_fspath__join (int ,int ,int *) ;
 int svn_path_uri_encode (char const*,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**) ;
 int svn_ra_svn__write_tuple (int *,int *,char*,...) ;
 int svn_relpath_canonicalize (char const*,int *) ;
 int write_lock (int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_lock(svn_ra_svn_conn_t *conn,
         apr_pool_t *pool,
         svn_ra_svn__list_t *params,
         void *baton)
{
  server_baton_t *b = baton;
  const char *path;
  const char *full_path;
  svn_lock_t *l;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "c", &path));

  full_path = svn_fspath__join(b->repository->fs_path->data,
                               svn_relpath_canonicalize(path, pool), pool);

  SVN_ERR(must_have_access(conn, pool, b, svn_authz_read,
                           full_path, FALSE));
  SVN_ERR(log_command(b, conn, pool, "get-lock %s",
                      svn_path_uri_encode(full_path, pool)));

  SVN_CMD_ERR(svn_fs_get_lock(&l, b->repository->fs, full_path, pool));

  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "w((!", "success"));
  if (l)
    SVN_ERR(write_lock(conn, pool, l));
  SVN_ERR(svn_ra_svn__write_tuple(conn, pool, "!))"));

  return SVN_NO_ERROR;
}
