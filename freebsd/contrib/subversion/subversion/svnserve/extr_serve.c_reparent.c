
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* repository; } ;
typedef TYPE_2__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {char const* repos_url; int fs_path; } ;


 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_fs_path (int ,int ,char const**) ;
 int log_command (TYPE_2__*,int *,int *,char*,int ) ;
 int svn_log__reparent (char const*,int *) ;
 int svn_path_uri_decode (char const*,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int svn_stringbuf_set (int ,char const*) ;
 char* svn_uri_canonicalize (char const*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
reparent(svn_ra_svn_conn_t *conn,
         apr_pool_t *pool,
         svn_ra_svn__list_t *params,
         void *baton)
{
  server_baton_t *b = baton;
  const char *url;
  const char *fs_path;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "c", &url));
  url = svn_uri_canonicalize(url, pool);
  SVN_ERR(trivial_auth_request(conn, pool, b));
  SVN_CMD_ERR(get_fs_path(svn_path_uri_decode(b->repository->repos_url, pool),
                          svn_path_uri_decode(url, pool),
                          &fs_path));
  SVN_ERR(log_command(b, conn, pool, "%s", svn_log__reparent(fs_path, pool)));
  svn_stringbuf_set(b->repository->fs_path, fs_path);
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));
  return SVN_NO_ERROR;
}
