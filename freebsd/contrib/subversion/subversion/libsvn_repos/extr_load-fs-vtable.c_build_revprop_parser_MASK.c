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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
struct TYPE_3__ {int /*<<< orphan*/ * apply_textdelta; int /*<<< orphan*/ * delete_node_property; int /*<<< orphan*/  close_revision; int /*<<< orphan*/ * close_node; int /*<<< orphan*/ * set_fulltext; int /*<<< orphan*/ * remove_node_props; int /*<<< orphan*/ * set_node_property; int /*<<< orphan*/  set_revision_property; int /*<<< orphan*/ * new_node_record; int /*<<< orphan*/  new_revision_record; int /*<<< orphan*/  uuid_record; int /*<<< orphan*/ * magic_header_record; } ;
typedef  TYPE_1__ svn_repos_parse_fns3_t ;
typedef  int /*<<< orphan*/  svn_repos_notify_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  void* svn_boolean_t ;
struct parse_baton {void* normalize_props; void* ignore_dates; void* use_post_commit_hook; void* use_pre_commit_hook; scalar_t__ end_rev; scalar_t__ start_rev; void* last_rev_mapped; void* oldest_dumpstream_rev; int /*<<< orphan*/ * rev_map; int /*<<< orphan*/  notify_pool; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * parent_dir; int /*<<< orphan*/  uuid_action; void* notify_baton; int /*<<< orphan*/  notify_func; void* validate_props; void* use_history; int /*<<< orphan*/  fs; int /*<<< orphan*/ * repos; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* SVN_INVALID_REVNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  revprops_close_revision ; 
 int /*<<< orphan*/  revprops_new_revision_record ; 
 int /*<<< orphan*/  set_revision_property ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_load_uuid_ignore ; 
 int /*<<< orphan*/  uuid_record ; 

__attribute__((used)) static svn_error_t *
FUNC5(const svn_repos_parse_fns3_t **callbacks,
                     void **parse_baton,
                     svn_repos_t *repos,
                     svn_revnum_t start_rev,
                     svn_revnum_t end_rev,
                     svn_boolean_t validate_props,
                     svn_boolean_t ignore_dates,
                     svn_boolean_t normalize_props,
                     svn_repos_notify_func_t notify_func,
                     void *notify_baton,
                     apr_pool_t *result_pool)
{
  svn_repos_parse_fns3_t *parser = FUNC2(result_pool, sizeof(*parser));
  struct parse_baton *pb = FUNC2(result_pool, sizeof(*pb));

  FUNC0((FUNC1(start_rev) &&
                  FUNC1(end_rev))
                 || ((! FUNC1(start_rev)) &&
                     (! FUNC1(end_rev))));
  if (FUNC1(start_rev))
    FUNC0(start_rev <= end_rev);

  parser->magic_header_record = NULL;
  parser->uuid_record = uuid_record;
  parser->new_revision_record = revprops_new_revision_record;
  parser->new_node_record = NULL;
  parser->set_revision_property = set_revision_property;
  parser->set_node_property = NULL;
  parser->remove_node_props = NULL;
  parser->set_fulltext = NULL;
  parser->close_node = NULL;
  parser->close_revision = revprops_close_revision;
  parser->delete_node_property = NULL;
  parser->apply_textdelta = NULL;

  pb->repos = repos;
  pb->fs = FUNC4(repos);
  pb->use_history = FALSE;
  pb->validate_props = validate_props;
  pb->notify_func = notify_func;
  pb->notify_baton = notify_baton;
  pb->uuid_action = svn_repos_load_uuid_ignore; /* Never touch the UUID. */
  pb->parent_dir = NULL;
  pb->pool = result_pool;
  pb->notify_pool = FUNC3(result_pool);
  pb->rev_map = NULL;
  pb->oldest_dumpstream_rev = SVN_INVALID_REVNUM;
  pb->last_rev_mapped = SVN_INVALID_REVNUM;
  pb->start_rev = start_rev;
  pb->end_rev = end_rev;
  pb->use_pre_commit_hook = FALSE;
  pb->use_post_commit_hook = FALSE;
  pb->ignore_dates = ignore_dates;
  pb->normalize_props = normalize_props;

  *callbacks = parser;
  *parse_baton = pb;
  return SVN_NO_ERROR;
}