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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_11__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_fs_t *fs,
                           apr_hash_t **node_origins,
                           const char *node_origins_file,
                           apr_pool_t *pool)
{
  apr_file_t *fd;
  svn_error_t *err;
  svn_stream_t *stream;

  *node_origins = NULL;
  err = FUNC7(&fd, node_origins_file,
                         APR_READ, APR_OS_DEFAULT, pool);
  if (err && FUNC0(err->apr_err))
    {
      FUNC4(err);
      return SVN_NO_ERROR;
    }
  FUNC1(err);

  stream = FUNC9(fd, FALSE, pool);
  *node_origins = FUNC3(pool);
  err = FUNC6(*node_origins, stream, SVN_HASH_TERMINATOR, pool);
  if (err)
    return FUNC5(err, FUNC2("malformed node origin data in '%s'"),
                                 node_origins_file);
  return FUNC8(stream);
}