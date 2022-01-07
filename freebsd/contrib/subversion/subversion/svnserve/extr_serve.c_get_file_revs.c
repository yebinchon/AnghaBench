
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_13__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
struct TYPE_14__ {int * pool; int * conn; } ;
typedef TYPE_4__ file_revs_baton_t ;
struct TYPE_15__ {int * conn; TYPE_3__* server; } ;
typedef TYPE_5__ authz_baton_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int repos; TYPE_1__* fs_path; } ;
struct TYPE_11__ {int data; } ;


 scalar_t__ FALSE ;
 int SVN_CMD_ERR (int *) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SVN_UNSPECIFIED_NUMBER ;
 int authz_check_access_cb_func (TYPE_3__*) ;
 int file_rev_handler ;
 int log_command (TYPE_3__*,int *,int *,char*,int ) ;
 int svn_error_clear (int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int svn_log__get_file_revs (char const*,int ,int ,scalar_t__,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,int *,int *,scalar_t__*) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int * svn_ra_svn__write_word (int *,int *,char*) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int * svn_repos_get_file_revs2 (int ,char const*,int ,int ,scalar_t__,int ,TYPE_5__*,int ,TYPE_4__*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
get_file_revs(svn_ra_svn_conn_t *conn,
              apr_pool_t *pool,
              svn_ra_svn__list_t *params,
              void *baton)
{
  server_baton_t *b = baton;
  svn_error_t *err, *write_err;
  file_revs_baton_t frb;
  svn_revnum_t start_rev, end_rev;
  const char *path;
  const char *full_path;
  apr_uint64_t include_merged_revs_param;
  svn_boolean_t include_merged_revisions;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "c(?r)(?r)?B",
                                  &path, &start_rev, &end_rev,
                                  &include_merged_revs_param));
  path = svn_relpath_canonicalize(path, pool);
  SVN_ERR(trivial_auth_request(conn, pool, b));
  full_path = svn_fspath__join(b->repository->fs_path->data, path, pool);

  if (include_merged_revs_param == SVN_RA_SVN_UNSPECIFIED_NUMBER)
    include_merged_revisions = FALSE;
  else
    include_merged_revisions = (svn_boolean_t) include_merged_revs_param;

  SVN_ERR(log_command(b, conn, pool, "%s",
                      svn_log__get_file_revs(full_path, start_rev, end_rev,
                                             include_merged_revisions,
                                             pool)));

  frb.conn = conn;
  frb.pool = ((void*)0);

  err = svn_repos_get_file_revs2(b->repository->repos, full_path, start_rev,
                                 end_rev, include_merged_revisions,
                                 authz_check_access_cb_func(b), &ab,
                                 file_rev_handler, &frb, pool);
  write_err = svn_ra_svn__write_word(conn, pool, "done");
  if (write_err)
    {
      svn_error_clear(err);
      return write_err;
    }
  SVN_CMD_ERR(err);
  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));

  return SVN_NO_ERROR;
}
