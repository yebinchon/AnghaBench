#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ len; struct TYPE_8__* next; struct TYPE_8__* children; int /*<<< orphan*/  data; scalar_t__ is_atom; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {scalar_t__ kind; int predecessor_count; int has_mergeinfo; void* edit_key; int /*<<< orphan*/ * data_key_uniquifier; void* data_key; void* prop_key; int /*<<< orphan*/  mergeinfo_count; int /*<<< orphan*/  predecessor_id; void* created_path; } ;
typedef  TYPE_2__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*) ; 

svn_error_t *
FUNC9(node_revision_t **noderev_p,
                                      svn_skel_t *skel,
                                      apr_pool_t *pool)
{
  node_revision_t *noderev;
  svn_skel_t *header_skel, *cur_skel;

  /* Validate the skel. */
  if (! FUNC3(skel))
    return FUNC4("node-revision");
  header_skel = skel->children;

  /* Create the returned structure */
  noderev = FUNC1(pool, sizeof(*noderev));

  /* KIND */
  if (FUNC8(header_skel->children, "dir"))
    noderev->kind = svn_node_dir;
  else
    noderev->kind = svn_node_file;

  /* CREATED-PATH */
  noderev->created_path = FUNC2(pool,
                                         header_skel->children->next->data,
                                         header_skel->children->next->len);

  /* PREDECESSOR-ID */
  if (header_skel->children->next->next)
    {
      cur_skel = header_skel->children->next->next;
      if (cur_skel->len)
        noderev->predecessor_id = FUNC7(cur_skel->data,
                                                        cur_skel->len, pool);

      /* PREDECESSOR-COUNT */
      noderev->predecessor_count = -1;
      if (cur_skel->next)
        {
          const char *str;

          cur_skel = cur_skel->next;
          if (cur_skel->len)
            {
              str = FUNC2(pool, cur_skel->data, cur_skel->len);
              FUNC0(FUNC5(&noderev->predecessor_count, str));
            }

          /* HAS-MERGEINFO and MERGEINFO-COUNT */
          if (cur_skel->next)
            {
              int val;

              cur_skel = cur_skel->next;
              str = FUNC2(pool, cur_skel->data, cur_skel->len);
              FUNC0(FUNC5(&val, str));
              noderev->has_mergeinfo = (val != 0);

              str = FUNC2(pool, cur_skel->next->data,
                                   cur_skel->next->len);
              FUNC0(FUNC6(&noderev->mergeinfo_count, str));
            }
        }
    }

  /* PROP-KEY */
  if (skel->children->next->len)
    noderev->prop_key = FUNC2(pool, skel->children->next->data,
                                       skel->children->next->len);

  /* DATA-KEY */
  if (skel->children->next->next->is_atom)
    {
      /* This is a real data rep key. */
      if (skel->children->next->next->len)
        noderev->data_key = FUNC2(pool,
                                           skel->children->next->next->data,
                                           skel->children->next->next->len);
      noderev->data_key_uniquifier = NULL;
    }
  else
    {
      /* This is a 2-tuple with a data rep key and a uniquifier. */
      noderev->data_key =
        FUNC2(pool,
                       skel->children->next->next->children->data,
                       skel->children->next->next->children->len);
      noderev->data_key_uniquifier =
        FUNC2(pool,
                       skel->children->next->next->children->next->data,
                       skel->children->next->next->children->next->len);
    }

  /* EDIT-DATA-KEY (optional, files only) */
  if ((noderev->kind == svn_node_file)
      && skel->children->next->next->next
      && skel->children->next->next->next->len)
    noderev->edit_key
      = FUNC2(pool, skel->children->next->next->next->data,
                       skel->children->next->next->next->len);

  /* Return the structure. */
  *noderev_p = noderev;
  return SVN_NO_ERROR;
}