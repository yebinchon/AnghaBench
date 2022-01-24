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
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {TYPE_1__* pb; } ;
struct node_baton {char const* path; int action; char const* copyfrom_path; int /*<<< orphan*/  copy_source_checksum; int /*<<< orphan*/  base_checksum; int /*<<< orphan*/  result_checksum; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  kind; int /*<<< orphan*/ * pool; struct revision_baton* rb; } ;
typedef  enum svn_node_action { ____Placeholder_svn_node_action } svn_node_action ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_2__ {scalar_t__ parent_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_ACTION ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_KIND ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_PATH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_CONTENT_CHECKSUM ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_CHECKSUM ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_CHECKSUM ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 struct node_baton* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int svn_node_action_add ; 
 int svn_node_action_change ; 
 int svn_node_action_delete ; 
 int svn_node_action_replace ; 
 int /*<<< orphan*/  svn_node_dir ; 
 int /*<<< orphan*/  svn_node_file ; 
 int /*<<< orphan*/  svn_node_unknown ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(struct node_baton **node_baton_p,
                apr_hash_t *headers,
                struct revision_baton *rb,
                apr_pool_t *pool)
{
  struct node_baton *nb = FUNC2(pool, sizeof(*nb));
  const char *val;

  /* Start with sensible defaults. */
  nb->rb = rb;
  nb->pool = pool;
  nb->kind = svn_node_unknown;

  /* Then add info from the headers.  */
  if ((val = FUNC5(headers, SVN_REPOS_DUMPFILE_NODE_PATH)))
  {
    val = FUNC6(val, pool);
    if (rb->pb->parent_dir)
      nb->path = FUNC7(rb->pb->parent_dir, val, pool);
    else
      nb->path = val;
  }

  if ((val = FUNC5(headers, SVN_REPOS_DUMPFILE_NODE_KIND)))
    {
      if (! FUNC3(val, "file"))
        nb->kind = svn_node_file;
      else if (! FUNC3(val, "dir"))
        nb->kind = svn_node_dir;
    }

  nb->action = (enum svn_node_action)(-1);  /* an invalid action code */
  if ((val = FUNC5(headers, SVN_REPOS_DUMPFILE_NODE_ACTION)))
    {
      if (! FUNC3(val, "change"))
        nb->action = svn_node_action_change;
      else if (! FUNC3(val, "add"))
        nb->action = svn_node_action_add;
      else if (! FUNC3(val, "delete"))
        nb->action = svn_node_action_delete;
      else if (! FUNC3(val, "replace"))
        nb->action = svn_node_action_replace;
    }

  nb->copyfrom_rev = SVN_INVALID_REVNUM;
  if ((val = FUNC5(headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_REV)))
    {
      nb->copyfrom_rev = FUNC1(val);
    }
  if ((val = FUNC5(headers, SVN_REPOS_DUMPFILE_NODE_COPYFROM_PATH)))
    {
      val = FUNC6(val, pool);
      if (rb->pb->parent_dir)
        nb->copyfrom_path = FUNC7(rb->pb->parent_dir, val, pool);
      else
        nb->copyfrom_path = val;
    }

  if ((val = FUNC5(headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_CHECKSUM)))
    {
      FUNC0(FUNC4(&nb->result_checksum, svn_checksum_md5,
                                     val, pool));
    }

  if ((val = FUNC5(headers,
                           SVN_REPOS_DUMPFILE_TEXT_DELTA_BASE_CHECKSUM)))
    {
      FUNC0(FUNC4(&nb->base_checksum, svn_checksum_md5, val,
                                     pool));
    }

  if ((val = FUNC5(headers,
                           SVN_REPOS_DUMPFILE_TEXT_COPY_SOURCE_CHECKSUM)))
    {
      FUNC0(FUNC4(&nb->copy_source_checksum,
                                     svn_checksum_md5, val, pool));
    }

  /* What's cool about this dump format is that the parser just
     ignores any unrecognized headers.  :-)  */

  *node_baton_p = nb;
  return SVN_NO_ERROR;
}