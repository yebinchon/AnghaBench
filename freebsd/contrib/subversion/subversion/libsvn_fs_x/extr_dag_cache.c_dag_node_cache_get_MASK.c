#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_8__ {int /*<<< orphan*/  dag_node_cache; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_fs_x__change_set_t ;
struct TYPE_9__ {TYPE_1__* fs; } ;
typedef  TYPE_3__ svn_fs_root_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_10__ {int /*<<< orphan*/ * node; } ;
struct TYPE_7__ {TYPE_2__* fsap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static dag_node_t *
FUNC3(svn_fs_root_t *root,
                   const svn_string_t *path)
{
  svn_fs_x__data_t *ffd = root->fs->fsap_data;
  svn_fs_x__change_set_t change_set = FUNC2(root);

  FUNC0(ffd->dag_node_cache);
  return FUNC1(ffd->dag_node_cache, change_set, path)->node;
}