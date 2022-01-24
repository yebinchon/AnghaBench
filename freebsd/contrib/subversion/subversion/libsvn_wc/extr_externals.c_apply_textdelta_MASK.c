#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_checksum_t ;
struct edit_baton {int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  pool; int /*<<< orphan*/  wri_abspath; int /*<<< orphan*/  db; int /*<<< orphan*/  new_md5_checksum; int /*<<< orphan*/  new_sha1_checksum; int /*<<< orphan*/  install_data; TYPE_1__* original_checksum; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*) ; 
 scalar_t__ svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(void *file_baton,
                const char *base_checksum_digest,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct edit_baton *eb = file_baton;
  svn_stream_t *src_stream;
  svn_stream_t *dest_stream;

  if (eb->original_checksum)
    {
      if (base_checksum_digest)
        {
          svn_checksum_t *expected_checksum;
          const svn_checksum_t *original_md5;

          FUNC0(FUNC4(&expected_checksum, svn_checksum_md5,
                                         base_checksum_digest, pool));

          if (eb->original_checksum->kind != svn_checksum_md5)
            FUNC0(FUNC9(&original_md5,
                                                eb->db, eb->wri_abspath,
                                                eb->original_checksum,
                                                pool, pool));
          else
            original_md5 = eb->original_checksum;

          if (!FUNC2(expected_checksum, original_md5))
            return FUNC6(FUNC3(
                                    expected_checksum,
                                    original_md5,
                                    pool,
                                    FUNC1("Base checksum mismatch for '%s'"),
                                    FUNC5(eb->local_abspath,
                                                           pool)));
        }

      FUNC0(FUNC11(&src_stream, NULL, eb->db,
                                       eb->wri_abspath, eb->original_checksum,
                                       pool, pool));
    }
  else
    src_stream = FUNC7(pool);

  FUNC0(FUNC10(&dest_stream,
                                              &eb->install_data,
                                              &eb->new_sha1_checksum,
                                              &eb->new_md5_checksum,
                                              eb->db, eb->wri_abspath,
                                              eb->pool, pool));

  FUNC8(src_stream, dest_stream, NULL, eb->local_abspath, pool,
                    handler, handler_baton);

  return SVN_NO_ERROR;
}