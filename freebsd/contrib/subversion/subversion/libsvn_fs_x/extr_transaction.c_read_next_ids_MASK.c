#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(apr_uint64_t *node_id,
              apr_uint64_t *copy_id,
              svn_fs_t *fs,
              svn_fs_x__txn_id_t txn_id,
              apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *buf;
  const char *str;
  FUNC0(FUNC5(&buf,
                                 FUNC4(fs, txn_id,
                                                             scratch_pool),
                                 scratch_pool));

  /* Parse this into two separate strings. */

  str = buf->data;
  *node_id = FUNC2(&str, str);
  if (*str != ' ')
    return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("next-id file corrupt"));

  ++str;
  *copy_id = FUNC2(&str, str);
  if (*str != '\n')
    return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                            FUNC1("next-id file corrupt"));

  return SVN_NO_ERROR;
}