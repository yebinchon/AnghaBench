#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  eb; int /*<<< orphan*/  conn; int /*<<< orphan*/  token; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ ra_svn_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC5(const char *path,
                                     void *parent_baton,
                                     svn_revnum_t rev,
                                     apr_pool_t *pool,
                                     void **file_baton)
{
  ra_svn_baton_t *b = parent_baton;
  svn_string_t *token = FUNC2('c', b->eb, pool);

  FUNC0(FUNC1(b->eb, b->pool));
  FUNC0(FUNC4(b->conn, pool, path, b->token,
                                          token, rev));
  *file_baton = FUNC3(b->conn, pool, b->eb, token);
  return SVN_NO_ERROR;
}