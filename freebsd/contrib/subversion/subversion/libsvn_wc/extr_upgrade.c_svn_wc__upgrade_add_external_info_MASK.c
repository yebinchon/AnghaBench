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
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
#define  svn_node_dir 130 
#define  svn_node_file 129 
#define  svn_node_unknown 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_wc_context_t *wc_ctx,
                                  const char *local_abspath,
                                  svn_node_kind_t kind,
                                  const char *def_local_abspath,
                                  const char *repos_relpath,
                                  const char *repos_root_url,
                                  const char *repos_uuid,
                                  svn_revnum_t def_peg_revision,
                                  svn_revnum_t def_revision,
                                  apr_pool_t *scratch_pool)
{
  svn_node_kind_t db_kind;
  switch (kind)
    {
      case svn_node_dir:
        db_kind = svn_node_dir;
        break;

      case svn_node_file:
        db_kind = svn_node_file;
        break;

      case svn_node_unknown:
        db_kind = svn_node_unknown;
        break;

      default:
        FUNC1();
    }

  FUNC0(FUNC3(wc_ctx->db, local_abspath,
                                             db_kind,
                                             FUNC2(local_abspath,
                                                                scratch_pool),
                                             def_local_abspath, repos_relpath,
                                             repos_root_url, repos_uuid,
                                             def_peg_revision, def_revision,
                                             scratch_pool));
  return SVN_NO_ERROR;
}