#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_version_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; struct TYPE_5__* next; scalar_t__ is_atom; struct TYPE_5__* children; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__CONFLICT_SRC_SUBVERSION ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_wc_conflict_version_t **location,
                        const svn_skel_t *skel,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  const char *repos_uuid;
  const char *repos_relpath;
  svn_revnum_t revision;
  apr_int64_t v;
  svn_node_kind_t node_kind;  /* note that 'none' is a legitimate value */
  const char *kind_str;

  const svn_skel_t *c = skel->children;

  if (!FUNC3(c, SVN_WC__CONFLICT_SRC_SUBVERSION))
    {
      *location = NULL;
      return SVN_NO_ERROR;
    }
  c = c->next;

  repos_root_url = FUNC1(result_pool, c->data, c->len);
  c = c->next;

  if (c->is_atom)
    repos_uuid = FUNC1(result_pool, c->data, c->len);
  else
    repos_uuid = NULL;
  c = c->next;

  repos_relpath = FUNC1(result_pool, c->data, c->len);
  c = c->next;

  FUNC0(FUNC4(&v, c, scratch_pool));
  revision = (svn_revnum_t)v;
  c = c->next;

  kind_str = FUNC1(scratch_pool, c->data, c->len);
  node_kind = FUNC2(kind_str);

  *location = FUNC5(repos_root_url,
                                              repos_uuid,
                                              repos_relpath,
                                              revision,
                                              node_kind,
                                              result_pool);
  return SVN_NO_ERROR;
}