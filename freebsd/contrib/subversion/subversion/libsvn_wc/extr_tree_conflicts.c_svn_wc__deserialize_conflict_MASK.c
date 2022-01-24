#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_version_t ;
typedef  int svn_wc_conflict_reason_t ;
struct TYPE_15__ {int action; int reason; } ;
typedef  TYPE_3__ svn_wc_conflict_description2_t ;
typedef  int svn_wc_conflict_action_t ;
struct TYPE_16__ {struct TYPE_16__ const* next; TYPE_2__* children; } ;
typedef  TYPE_4__ const svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_17__ {char* data; } ;
struct TYPE_14__ {TYPE_1__* next; } ;
struct TYPE_13__ {TYPE_4__ const* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  node_kind_map ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,TYPE_4__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 TYPE_8__* FUNC10 (TYPE_4__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc__conflict_action_map ; 
 int /*<<< orphan*/  svn_wc__conflict_reason_map ; 
 int /*<<< orphan*/  svn_wc__operation_map ; 
 TYPE_3__* FUNC11 (char const*,scalar_t__,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(const svn_wc_conflict_description2_t **conflict,
                             const svn_skel_t *skel,
                             const char *dir_path,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  const char *victim_basename;
  const char *victim_abspath;
  svn_node_kind_t node_kind;
  svn_wc_operation_t operation;
  svn_wc_conflict_action_t action;
  svn_wc_conflict_reason_t reason;
  const svn_wc_conflict_version_t *src_left_version;
  const svn_wc_conflict_version_t *src_right_version;
  int n;
  svn_wc_conflict_description2_t *new_conflict;

  if (!FUNC3(skel))
    return FUNC9(SVN_ERR_WC_CORRUPT, NULL,
                             FUNC1("Invalid conflict info '%s' in tree conflict "
                               "description"),
                             skel ? FUNC10(skel, scratch_pool)->data
                                  : "(null)");

  /* victim basename */
  victim_basename = FUNC2(scratch_pool,
                                   skel->children->next->data,
                                   skel->children->next->len);
  if (victim_basename[0] == '\0')
    return FUNC8(SVN_ERR_WC_CORRUPT, NULL,
                            FUNC1("Empty 'victim' field in tree conflict "
                              "description"));

  /* node_kind */
  FUNC0(FUNC4(&n, node_kind_map, skel->children->next->next));
  node_kind = (svn_node_kind_t)n;
  if (node_kind != svn_node_file && node_kind != svn_node_dir)
    return FUNC8(SVN_ERR_WC_CORRUPT, NULL,
             FUNC1("Invalid 'node_kind' field in tree conflict description"));

  /* operation */
  FUNC0(FUNC4(&n, svn_wc__operation_map,
                          skel->children->next->next->next));
  operation = (svn_wc_operation_t)n;

  FUNC0(FUNC6(&victim_abspath,
                    FUNC7(dir_path, victim_basename, scratch_pool),
                    scratch_pool));

  /* action */
  FUNC0(FUNC4(&n, svn_wc__conflict_action_map,
                          skel->children->next->next->next->next));
  action = n;

  /* reason */
  FUNC0(FUNC4(&n, svn_wc__conflict_reason_map,
                          skel->children->next->next->next->next->next));
  reason = n;

  /* Let's just make it a bit easier on ourself here... */
  skel = skel->children->next->next->next->next->next->next;

  /* src_left_version */
  FUNC0(FUNC5(&src_left_version, skel,
                                 result_pool, scratch_pool));

  /* src_right_version */
  FUNC0(FUNC5(&src_right_version, skel->next,
                                 result_pool, scratch_pool));

  new_conflict = FUNC11(victim_abspath,
    node_kind, operation, src_left_version, src_right_version,
    result_pool);
  new_conflict->action = action;
  new_conflict->reason = reason;

  *conflict = new_conflict;

  return SVN_NO_ERROR;
}