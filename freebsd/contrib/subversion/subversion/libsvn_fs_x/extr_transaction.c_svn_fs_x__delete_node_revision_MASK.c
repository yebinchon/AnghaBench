#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ kind; TYPE_4__* data_rep; TYPE_2__* prop_rep; } ;
typedef  TYPE_5__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_19__ {int /*<<< orphan*/  dir_cache; } ;
typedef  TYPE_6__ svn_fs_x__data_t ;
struct TYPE_20__ {TYPE_6__* fsap_data; } ;
typedef  TYPE_7__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_16__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_17__ {TYPE_3__ id; } ;
struct TYPE_14__ {int /*<<< orphan*/  change_set; } ;
struct TYPE_15__ {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__**,TYPE_7__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 

svn_error_t *
FUNC8(svn_fs_t *fs,
                               const svn_fs_x__id_t *id,
                               apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev;
  FUNC0(FUNC2(&noderev, fs, id, scratch_pool,
                                      scratch_pool));

  /* Delete any mutable property representation. */
  if (noderev->prop_rep
      && FUNC3(noderev->prop_rep->id.change_set))
    FUNC0(FUNC7(FUNC5(fs, id,
                                                              scratch_pool,
                                                              scratch_pool),
                                FALSE, scratch_pool));

  /* Delete any mutable data representation. */
  if (noderev->data_rep
      && FUNC3(noderev->data_rep->id.change_set)
      && noderev->kind == svn_node_dir)
    {
      svn_fs_x__data_t *ffd = fs->fsap_data;
      const svn_fs_x__id_t *key = id;

      FUNC0(FUNC7(
                  FUNC4(fs, id, scratch_pool,
                                                   scratch_pool),
                  FALSE, scratch_pool));

      /* remove the corresponding entry from the cache, if such exists */
      FUNC0(FUNC1(ffd->dir_cache, key, NULL, scratch_pool));
    }

  return FUNC7(FUNC6(fs, id,
                                                         scratch_pool,
                                                         scratch_pool),
                             FALSE, scratch_pool);
}