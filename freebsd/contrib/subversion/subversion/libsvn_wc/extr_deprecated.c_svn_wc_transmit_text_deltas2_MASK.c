#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
struct TYPE_7__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_MD5_DIGESTSIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,TYPE_2__ const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

svn_error_t *
FUNC14(const char **tempfile,
                             unsigned char digest[],
                             const char *path,
                             svn_wc_adm_access_t *adm_access,
                             svn_boolean_t fulltext,
                             const svn_delta_editor_t *editor,
                             void *file_baton,
                             apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;
  const svn_checksum_t *new_text_base_md5_checksum;
  svn_stream_t *tempstream;
  svn_error_t *err;

  FUNC0(FUNC2(&local_abspath, path, pool));
  FUNC0(FUNC11(&wc_ctx, NULL /* config */,
                                         FUNC10(adm_access),
                                         pool));
  if (tempfile)
    {
      apr_file_t *f;

      /* The temporary file can't be the same location as in 1.6 because the
       * admin directory no longer exists. */
      FUNC0(FUNC5(&f, tempfile, NULL,
                                       svn_io_file_del_none,
                                       pool, pool));
      tempstream = FUNC7(f, FALSE, TRUE, pool);
    }
  else
    {
      tempstream = NULL;
    }

  err = FUNC12(FUNC9(tempstream, pool),
                                              (digest
                                               ? &new_text_base_md5_checksum
                                               : NULL),
                                              NULL, wc_ctx->db,
                                              local_abspath, fulltext,
                                              editor, file_baton,
                                              pool, pool);
  if (tempfile)
    {
      err = FUNC3(err, FUNC8(tempstream));

      if (err)
        {
          err = FUNC3(
                  err, FUNC6(*tempfile, TRUE, pool));
        }
    }

  FUNC0(err);

  if (digest)
    FUNC1(digest, new_text_base_md5_checksum->digest, APR_MD5_DIGESTSIZE);

  return FUNC4(FUNC13(wc_ctx));
}