
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
struct TYPE_12__ {int * conn; TYPE_3__* server; } ;
typedef TYPE_4__ authz_baton_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int repos; int fs; TYPE_1__* fs_path; } ;
struct TYPE_9__ {int data; } ;


 int SVN_CMD_ERR (int *) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int authz_check_access_cb_func (TYPE_3__*) ;
 int gls_receiver ;
 int log_command (void*,int *,int *,char*,int ) ;
 int * log_fail_and_flush (int *,TYPE_3__*,int *,int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_createf (int ,int *,char*) ;
 int * svn_fs_youngest_rev (scalar_t__*,int ,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 int svn_log__get_location_segments (char const*,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int svn_ra_svn__write_cmd_response (int *,int *,char*) ;
 int * svn_ra_svn__write_word (int *,int *,char*) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 int * svn_repos_node_location_segments (int ,char const*,scalar_t__,scalar_t__,scalar_t__,int ,void*,int ,TYPE_4__*,int *) ;
 int trivial_auth_request (int *,int *,TYPE_3__*) ;

__attribute__((used)) static svn_error_t *
get_location_segments(svn_ra_svn_conn_t *conn,
                      apr_pool_t *pool,
                      svn_ra_svn__list_t *params,
                      void *baton)
{
  svn_error_t *err, *write_err;
  server_baton_t *b = baton;
  svn_revnum_t peg_revision, start_rev, end_rev;
  const char *relative_path;
  const char *abs_path;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;


  SVN_ERR(svn_ra_svn__parse_tuple(params, "c(?r)(?r)(?r)",
                                  &relative_path, &peg_revision,
                                  &start_rev, &end_rev));
  relative_path = svn_relpath_canonicalize(relative_path, pool);

  abs_path = svn_fspath__join(b->repository->fs_path->data, relative_path,
                              pool);

  SVN_ERR(trivial_auth_request(conn, pool, b));
  SVN_ERR(log_command(baton, conn, pool, "%s",
                      svn_log__get_location_segments(abs_path, peg_revision,
                                                     start_rev, end_rev,
                                                     pool)));


  if (!SVN_IS_VALID_REVNUM(start_rev) || !SVN_IS_VALID_REVNUM(peg_revision))
    {
      svn_revnum_t youngest;

      err = svn_fs_youngest_rev(&youngest, b->repository->fs, pool);

      if (err)
        {
          err = svn_error_compose_create(
                    svn_ra_svn__write_word(conn, pool, "done"),
                    err);

          return log_fail_and_flush(err, b, conn, pool);
        }

      if (!SVN_IS_VALID_REVNUM(start_rev))
        start_rev = youngest;
      if (!SVN_IS_VALID_REVNUM(peg_revision))
        peg_revision = youngest;
    }


  if (!SVN_IS_VALID_REVNUM(end_rev))
    end_rev = 0;

  if (end_rev > start_rev)
    {
      err = svn_ra_svn__write_word(conn, pool, "done");
      err = svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, err,
                              "Get-location-segments end revision must not be "
                              "younger than start revision");
      return log_fail_and_flush(err, b, conn, pool);
    }

  if (start_rev > peg_revision)
    {
      err = svn_ra_svn__write_word(conn, pool, "done");
      err = svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, err,
                              "Get-location-segments start revision must not "
                              "be younger than peg revision");
      return log_fail_and_flush(err, b, conn, pool);
    }







  err = svn_repos_node_location_segments(b->repository->repos, abs_path,
                                         peg_revision, start_rev, end_rev,
                                         gls_receiver, (void *)conn,
                                         authz_check_access_cb_func(b), &ab,
                                         pool);
  write_err = svn_ra_svn__write_word(conn, pool, "done");
  if (write_err)
    {
      return svn_error_compose_create(write_err, err);
    }
  SVN_CMD_ERR(err);

  SVN_ERR(svn_ra_svn__write_cmd_response(conn, pool, ""));

  return SVN_NO_ERROR;
}
