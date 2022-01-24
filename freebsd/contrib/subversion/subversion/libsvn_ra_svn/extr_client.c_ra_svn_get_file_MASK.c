#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_12__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_3__ svn_ra_svn__session_baton_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_1__ string; } ;
struct TYPE_13__ {scalar_t__ kind; TYPE_2__ u; } ;
typedef  TYPE_4__ svn_ra_svn__item_t ;
struct TYPE_14__ {TYPE_3__* priv; } ;
typedef  TYPE_5__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ SVN_RA_SVN_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_5__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static svn_error_t *FUNC19(svn_ra_session_t *session, const char *path,
                                    svn_revnum_t rev, svn_stream_t *stream,
                                    svn_revnum_t *fetched_rev,
                                    apr_hash_t **props,
                                    apr_pool_t *pool)
{
  svn_ra_svn__session_baton_t *sess_baton = session->priv;
  svn_ra_svn_conn_t *conn = sess_baton->conn;
  svn_ra_svn__list_t *proplist;
  const char *expected_digest;
  svn_checksum_t *expected_checksum = NULL;
  svn_checksum_ctx_t *checksum_ctx;
  apr_pool_t *iterpool;

  path = FUNC3(session, path, pool);
  FUNC0(FUNC17(conn, pool, path, rev,
                                         (props != NULL), (stream != NULL)));
  FUNC0(FUNC2(sess_baton, pool));
  FUNC0(FUNC15(conn, pool, "(?c)rl",
                                        &expected_digest,
                                        &rev, &proplist));

  if (fetched_rev)
    *fetched_rev = rev;
  if (props)
    FUNC0(FUNC14(proplist, pool, props));

  /* We're done if the contents weren't wanted. */
  if (!stream)
    return SVN_NO_ERROR;

  if (expected_digest)
    {
      FUNC0(FUNC8(&expected_checksum, svn_checksum_md5,
                                     expected_digest, pool));
      checksum_ctx = FUNC4(svn_checksum_md5, pool);
    }

  /* Read the file's contents. */
  iterpool = FUNC12(pool);
  while (1)
    {
      svn_ra_svn__item_t *item;

      FUNC11(iterpool);
      FUNC0(FUNC16(conn, iterpool, &item));
      if (item->kind != SVN_RA_SVN_STRING)
        return FUNC10(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                                FUNC1("Non-string as part of file contents"));
      if (item->u.string.len == 0)
        break;

      if (expected_checksum)
        FUNC0(FUNC9(checksum_ctx, item->u.string.data,
                                    item->u.string.len));

      FUNC0(FUNC18(stream, item->u.string.data,
                               &item->u.string.len));
    }
  FUNC13(iterpool);

  FUNC0(FUNC15(conn, pool, ""));

  if (expected_checksum)
    {
      svn_checksum_t *checksum;

      FUNC0(FUNC5(&checksum, checksum_ctx, pool));
      if (!FUNC6(checksum, expected_checksum))
        return FUNC7(expected_checksum, checksum, pool,
                                         FUNC1("Checksum mismatch for '%s'"),
                                         path);
    }

  return SVN_NO_ERROR;
}