
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
struct TYPE_12__ {int * conn; } ;
typedef TYPE_3__ svn_ra_svn__session_baton_t ;
typedef int svn_ra_svn__list_t ;
struct TYPE_10__ {scalar_t__ len; int data; } ;
struct TYPE_11__ {TYPE_1__ string; } ;
struct TYPE_13__ {scalar_t__ kind; TYPE_2__ u; } ;
typedef TYPE_4__ svn_ra_svn__item_t ;
struct TYPE_14__ {TYPE_3__* priv; } ;
typedef TYPE_5__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_SVN_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SVN_STRING ;
 int _ (char*) ;
 int handle_auth_request (TYPE_3__*,int *) ;
 char* reparent_path (TYPE_5__*,char const*,int *) ;
 int * svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_final (int **,int *,int *) ;
 int svn_checksum_match (int *,int *) ;
 int svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (int *,int *,int *,int ,char const*) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int svn_checksum_update (int *,int ,scalar_t__) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_svn__parse_proplist (int *,int *,int **) ;
 int svn_ra_svn__read_cmd_response (int *,int *,char*,...) ;
 int svn_ra_svn__read_item (int *,int *,TYPE_4__**) ;
 int svn_ra_svn__write_cmd_get_file (int *,int *,char const*,int ,int ,int ) ;
 int svn_stream_write (int *,int ,scalar_t__*) ;

__attribute__((used)) static svn_error_t *ra_svn_get_file(svn_ra_session_t *session, const char *path,
                                    svn_revnum_t rev, svn_stream_t *stream,
                                    svn_revnum_t *fetched_rev,
                                    apr_hash_t **props,
                                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_ra_svn__list_t *proplist;
  const char *expected_digest;
  svn_checksum_t *expected_checksum = ((void*)0);
  svn_checksum_ctx_t *checksum_ctx;
  apr_pool_t *iterpool;

  path = reparent_path(session, path, pool);
  SVN_ERR(svn_ra_svn__write_cmd_get_file(conn, pool, path, rev,
                                         (props != ((void*)0)), (stream != ((void*)0))));
  SVN_ERR(handle_auth_request(sess_baton, pool));
  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, "(?c)rl",
                                        &expected_digest,
                                        &rev, &proplist));

  if (fetched_rev)
    *fetched_rev = rev;
  if (props)
    SVN_ERR(svn_ra_svn__parse_proplist(proplist, pool, props));


  if (!stream)
    return SVN_NO_ERROR;

  if (expected_digest)
    {
      SVN_ERR(svn_checksum_parse_hex(&expected_checksum, svn_checksum_md5,
                                     expected_digest, pool));
      checksum_ctx = svn_checksum_ctx_create(svn_checksum_md5, pool);
    }


  iterpool = svn_pool_create(pool);
  while (1)
    {
      svn_ra_svn__item_t *item;

      svn_pool_clear(iterpool);
      SVN_ERR(svn_ra_svn__read_item(conn, iterpool, &item));
      if (item->kind != SVN_RA_SVN_STRING)
        return svn_error_create(SVN_ERR_RA_SVN_MALFORMED_DATA, ((void*)0),
                                _("Non-string as part of file contents"));
      if (item->u.string.len == 0)
        break;

      if (expected_checksum)
        SVN_ERR(svn_checksum_update(checksum_ctx, item->u.string.data,
                                    item->u.string.len));

      SVN_ERR(svn_stream_write(stream, item->u.string.data,
                               &item->u.string.len));
    }
  svn_pool_destroy(iterpool);

  SVN_ERR(svn_ra_svn__read_cmd_response(conn, pool, ""));

  if (expected_checksum)
    {
      svn_checksum_t *checksum;

      SVN_ERR(svn_checksum_final(&checksum, checksum_ctx, pool));
      if (!svn_checksum_match(checksum, expected_checksum))
        return svn_checksum_mismatch_err(expected_checksum, checksum, pool,
                                         _("Checksum mismatch for '%s'"),
                                         path);
    }

  return SVN_NO_ERROR;
}
