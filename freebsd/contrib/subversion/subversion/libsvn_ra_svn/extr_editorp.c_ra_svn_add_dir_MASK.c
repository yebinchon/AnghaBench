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
struct TYPE_2__ {int /*<<< orphan*/  eb; int /*<<< orphan*/  conn; int /*<<< orphan*/  token; } ;
typedef  TYPE_1__ ra_svn_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *FUNC7(const char *path, void *parent_baton,
                                   const char *copy_path,
                                   svn_revnum_t copy_rev,
                                   apr_pool_t *pool, void **child_baton)
{
  ra_svn_baton_t *b = parent_baton;
  svn_string_t *token = FUNC4('d', b->eb, pool);

  FUNC1((copy_path && FUNC2(copy_rev))
                 || (!copy_path && !FUNC2(copy_rev)));
  FUNC0(FUNC3(b->eb, pool));
  FUNC0(FUNC6(b->conn, pool, path, b->token,
                                        token, copy_path, copy_rev));
  *child_baton = FUNC5(b->conn, pool, b->eb, token);
  return SVN_NO_ERROR;
}