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
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct print_history_baton {scalar_t__ limit; scalar_t__ count; int /*<<< orphan*/  fs; scalar_t__ show_ids; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CEASE_INVOCATION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton,
              const char *path,
              svn_revnum_t revision,
              apr_pool_t *pool)
{
  struct print_history_baton *phb = baton;

  FUNC0(FUNC2(NULL));

  if (phb->show_ids)
    {
      const svn_fs_id_t *node_id;
      svn_fs_root_t *rev_root;
      svn_string_t *id_string;

      FUNC0(FUNC6(&rev_root, phb->fs, revision, pool));
      FUNC0(FUNC5(&node_id, rev_root, path, pool));
      id_string = FUNC7(node_id, pool);
      FUNC0(FUNC3(pool, "%8ld   %s <%s>\n",
                                 revision, path, id_string->data));
    }
  else
    {
      FUNC0(FUNC3(pool, "%8ld   %s\n", revision, path));
    }

  if (phb->limit > 0)
    {
      phb->count++;
      if (phb->count >= phb->limit)
        /* Not L10N'd, since this error is suppressed by the caller. */
        return FUNC4(SVN_ERR_CEASE_INVOCATION, NULL,
                                FUNC1("History item limit reached"));
    }

  return SVN_NO_ERROR;
}