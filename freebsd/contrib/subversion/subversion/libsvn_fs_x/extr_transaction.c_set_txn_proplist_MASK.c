#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_t *fs,
                 svn_fs_x__txn_id_t txn_id,
                 apr_hash_t *props,
                 apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  const char *temp_path;

  /* Write the new contents into a temporary file. */
  FUNC0(FUNC6(&stream, &temp_path,
                                 FUNC1(fs, txn_id,
                                                        scratch_pool),
                                 svn_io_file_del_none,
                                 scratch_pool, scratch_pool));
  FUNC0(FUNC3(stream, props, scratch_pool));
  FUNC0(FUNC5(stream));

  /* Replace the old file with the new one. */
  FUNC0(FUNC4(temp_path,
                              FUNC2(fs, txn_id,
                                                       scratch_pool),
                              FALSE,
                              scratch_pool));

  return SVN_NO_ERROR;
}