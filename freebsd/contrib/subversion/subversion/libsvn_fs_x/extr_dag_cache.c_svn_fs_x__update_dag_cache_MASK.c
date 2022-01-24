#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_9__ {TYPE_2__* dag_node_cache; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_10__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ svn_fs_x__dag_cache_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_11__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_3__ cache_entry_t ;
struct TYPE_13__ {TYPE_1__* fsap_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  change_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(dag_node_t *node)
{
  svn_fs_x__data_t *ffd = FUNC5(node)->fsap_data;
  const char *path = FUNC4(node);
  svn_fs_x__dag_cache_t *cache = ffd->dag_node_cache;

  cache_entry_t *bucket;
  svn_string_t normalized;

  FUNC0(cache);
  bucket = FUNC1(cache, FUNC6(node)->change_set,
                        FUNC2(&normalized, path));
  bucket->node = FUNC3(node, cache->pool);
}