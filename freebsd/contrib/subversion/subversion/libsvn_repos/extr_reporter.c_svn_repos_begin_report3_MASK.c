#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  int /*<<< orphan*/  svn_repos_authz_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  svn_delta_editor_t ;
typedef  void* svn_boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  reader; int /*<<< orphan*/ * pool; int /*<<< orphan*/  revision_infos; void* authz_read_baton; int /*<<< orphan*/  authz_read_func; void* edit_baton; int /*<<< orphan*/  const* editor; int /*<<< orphan*/  is_switch; void* send_copyfrom_args; void* ignore_ancestry; scalar_t__ requested_depth; int /*<<< orphan*/  zero_copy_limit; void* text_deltas; void* fs_base; void* t_path; int /*<<< orphan*/  t_rev; int /*<<< orphan*/  s_operand; TYPE_1__* repos; } ;
typedef  TYPE_2__ report_baton_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_REPOS_BAD_ARGS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ svn_depth_exclude ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 void* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 void* FUNC8 (void*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(void **report_baton,
                        svn_revnum_t revnum,
                        svn_repos_t *repos,
                        const char *fs_base,
                        const char *s_operand,
                        const char *switch_path,
                        svn_boolean_t text_deltas,
                        svn_depth_t depth,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t send_copyfrom_args,
                        const svn_delta_editor_t *editor,
                        void *edit_baton,
                        svn_repos_authz_func_t authz_read_func,
                        void *authz_read_baton,
                        apr_size_t zero_copy_limit,
                        apr_pool_t *pool)
{
  report_baton_t *b;
  const char *uuid;

  if (depth == svn_depth_exclude)
    return FUNC5(SVN_ERR_REPOS_BAD_ARGS, NULL,
                            FUNC1("Request depth 'exclude' not supported"));

  FUNC0(FUNC6(repos->fs, &uuid, pool));

  /* Build a reporter baton.  Copy strings in case the caller doesn't
     keep track of them. */
  b = FUNC3(pool, sizeof(*b));
  b->repos = repos;
  b->fs_base = FUNC7(fs_base, pool);
  b->s_operand = FUNC4(pool, s_operand);
  b->t_rev = revnum;
  b->t_path = switch_path ? FUNC7(switch_path, pool)
                          : FUNC8(b->fs_base, s_operand, pool);
  b->text_deltas = text_deltas;
  b->zero_copy_limit = zero_copy_limit;
  b->requested_depth = depth;
  b->ignore_ancestry = ignore_ancestry;
  b->send_copyfrom_args = send_copyfrom_args;
  b->is_switch = (switch_path != NULL);
  b->editor = editor;
  b->edit_baton = edit_baton;
  b->authz_read_func = authz_read_func;
  b->authz_read_baton = authz_read_baton;
  b->revision_infos = FUNC2(pool);
  b->pool = pool;
  b->reader = FUNC9(1000 /* blocksize */,
                                          1000000 /* maxsize */,
                                          pool);
  b->repos_uuid = FUNC10(uuid, pool);

  /* Hand reporter back to client. */
  *report_baton = b;
  return SVN_NO_ERROR;
}