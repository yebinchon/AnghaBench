#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  repos; } ;
typedef  TYPE_1__ svnlook_ctxt_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_node_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svnlook_ctxt_t *c, apr_pool_t *pool)
{
  svn_fs_root_t *root, *base_root;
  svn_revnum_t base_rev_id;
  svn_repos_node_t *tree;

  FUNC0(FUNC3(&root, c, pool));
  FUNC0(FUNC2(&base_rev_id, c, pool));
  if (base_rev_id == SVN_INVALID_REVNUM)
    return SVN_NO_ERROR;

  FUNC0(FUNC1(&tree, c->repos, root, base_rev_id, pool));
  if (tree)
    {
      svn_stream_t *out_stream;
      const char *encoding = FUNC6(pool);

      FUNC0(FUNC7(&base_root, c->fs, base_rev_id, pool));

      /* This fflush() might seem odd, but it was added to deal
         with this bug report:

         http://subversion.tigris.org/servlets/ReadMsg?\
         list=dev&msgNo=140782

         From: "Steve Hay" <SteveHay{_AT_}planit.com>
         To: <dev@subversion.tigris.org>
         Subject: svnlook diff output in wrong order when redirected
         Date: Fri, 4 Jul 2008 16:34:15 +0100
         Message-ID: <1B32FF956ABF414C9BCE5E487A1497E702014F62@\
                     ukmail02.planit.group>

         Adding the fflush() fixed the bug (not everyone could
         reproduce it, but those who could confirmed the fix).
         Later in the thread, Daniel Shahaf speculated as to
         why the fix works:

         "Because svn_cmdline_printf() uses the standard
         'FILE *stdout' to write to stdout, while
         svn_stream_for_stdout() uses (through
         apr_file_open_stdout()) Windows API's to get a
         handle for stdout?" */
      FUNC0(FUNC5(stdout));
      FUNC0(FUNC8(&out_stream, pool));

      FUNC0(FUNC4(out_stream, encoding, root, base_root, tree,
                              "", "", c, pool));
    }
  return SVN_NO_ERROR;
}