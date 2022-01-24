#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_committed_queue_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ SVN_ERR_WC_DB_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(const char *path,
                          svn_wc_adm_access_t *adm_access,
                          svn_boolean_t recurse,
                          svn_revnum_t new_revnum,
                          const char *rev_date,
                          const char *rev_author,
                          const apr_array_header_t *wcprop_changes,
                          svn_boolean_t remove_lock,
                          svn_boolean_t remove_changelist,
                          const unsigned char *digest,
                          apr_pool_t *pool)
{
  svn_wc__db_t *db = FUNC5(adm_access);
  const char *local_abspath;
  const svn_checksum_t *md5_checksum;
  const svn_checksum_t *sha1_checksum = NULL;
  svn_wc_context_t *wc_ctx;
  svn_wc_committed_queue_t *queue;

  FUNC0(FUNC2(&local_abspath, path, pool));
  FUNC0(FUNC6(&wc_ctx, NULL, db, pool));

  if (digest)
    md5_checksum = FUNC1(digest, pool);
  else
    md5_checksum = NULL;

  if (md5_checksum != NULL)
    {
      svn_error_t *err;
      err = FUNC7(&sha1_checksum, db,
                                         local_abspath, md5_checksum,
                                         pool, pool);

      if (err && err->apr_err == SVN_ERR_WC_DB_ERROR)
        {
          FUNC3(err);
          sha1_checksum = NULL;
        }
      else
        FUNC0(err);
    }

  queue = FUNC8(pool);
  FUNC0(FUNC11(queue, wc_ctx, local_abspath, recurse,
                                  wcprop_changes, remove_lock,
                                  remove_changelist,
                                  sha1_checksum /* or NULL if not modified
                                                           or directory */,
                                  pool));

  FUNC0(FUNC10(queue, wc_ctx,
                                          new_revnum, rev_date, rev_author,
                                          NULL, NULL /* cancel */,
                                          pool));

  return FUNC4(FUNC9(wc_ctx));
}