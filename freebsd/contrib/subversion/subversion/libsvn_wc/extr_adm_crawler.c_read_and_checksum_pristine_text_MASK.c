#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const**,int /*<<< orphan*/ *,char const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_stream_t **stream,
                                const svn_checksum_t **expected_md5_checksum,
                                svn_checksum_t **actual_md5_checksum,
                                svn_wc__db_t *db,
                                const char *local_abspath,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_stream_t *base_stream;

  FUNC0(FUNC8(&base_stream, NULL, db, local_abspath,
                                        result_pool, scratch_pool));
  if (base_stream == NULL)
    {
      base_stream = FUNC5(result_pool);
      *expected_md5_checksum = NULL;
      *actual_md5_checksum = NULL;
    }
  else
    {
      const svn_checksum_t *expected_md5;

      FUNC0(FUNC7(NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL, &expected_md5,
                                   NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL,
                                   db, local_abspath,
                                   result_pool, scratch_pool));
      if (expected_md5 == NULL)
        return FUNC3(SVN_ERR_WC_CORRUPT, NULL,
                                 FUNC1("Pristine checksum for file '%s' is missing"),
                                 FUNC2(local_abspath,
                                                        scratch_pool));
      if (expected_md5->kind != svn_checksum_md5)
        FUNC0(FUNC6(&expected_md5, db, local_abspath,
                                            expected_md5,
                                            result_pool, scratch_pool));
      *expected_md5_checksum = expected_md5;

      /* Arrange to set ACTUAL_MD5_CHECKSUM to the MD5 of what is *actually*
         found when the base stream is read. */
      base_stream = FUNC4(base_stream, actual_md5_checksum,
                                            NULL, svn_checksum_md5, TRUE,
                                            result_pool);
    }

  *stream = base_stream;
  return SVN_NO_ERROR;
}