#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_13__ {TYPE_9__* dag_node_cache; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_fs_x__change_set_t ;
struct TYPE_14__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_15__ {int /*<<< orphan*/ * node; } ;
typedef  TYPE_4__ cache_entry_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_16__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_9__*) ; 
 TYPE_4__* FUNC4 (TYPE_9__*,int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(dag_node_t **child_p,
         svn_fs_root_t *root,
         dag_node_t *parent,
         const char *name,
         const svn_string_t *path,
         svn_fs_x__change_set_t change_set,
         svn_boolean_t allow_empty,
         apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = FUNC6(parent);
  svn_fs_x__data_t *ffd = fs->fsap_data;
  cache_entry_t *bucket;
  svn_fs_x__id_t node_id;

  /* Locate the corresponding cache entry.  We may need PARENT to remain
     valid for later use, so don't call auto_clear_dag_cache() here. */
  bucket = FUNC4(ffd->dag_node_cache, change_set, path);
  if (bucket->node)
    {
      /* Already cached. Return a reference to the cached object. */
      *child_p = bucket->node;
      return SVN_NO_ERROR;
    }

  /* Get the ID of the node we are looking for.  The function call checks
     for various error conditions such like PARENT not being a directory. */
  FUNC0(FUNC8(&node_id, parent, name, scratch_pool));
  if (! FUNC9(&node_id))
    {
      const char *dir;

      /* No such directory entry.  Is a simple NULL result o.k.? */
      if (allow_empty)
        {
          *child_p = NULL;
          return SVN_NO_ERROR;
        }

      /* Produce an appropriate error message. */
      dir = FUNC2(scratch_pool, path->data, path->len);
      dir = FUNC5(dir, scratch_pool);

      return FUNC1(root, dir);
    }

  /* We are about to add a new entry to the cache.  Periodically clear it.
     If we had to clear it just now (< 1% chance), re-add the entry for our
     item. */
  if (FUNC3(ffd->dag_node_cache))
    bucket = FUNC4(ffd->dag_node_cache, change_set, path);

  /* Construct the DAG node object for NODE_ID. Let it live in the cache. */
  FUNC0(FUNC7(&bucket->node, fs, &node_id,
                                 ffd->dag_node_cache->pool,
                                 scratch_pool));

  /* Return a reference to the cached object. */
  *child_p = bucket->node;
  return SVN_NO_ERROR;
}