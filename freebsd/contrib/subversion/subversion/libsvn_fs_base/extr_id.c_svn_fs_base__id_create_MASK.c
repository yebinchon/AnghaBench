#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* fsap_data; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ svn_fs_id_t ;
struct TYPE_5__ {void* txn_id; void* copy_id; void* node_id; } ;
typedef  TYPE_2__ id_private_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  id_vtable ; 

svn_fs_id_t *
FUNC2(const char *node_id,
                       const char *copy_id,
                       const char *txn_id,
                       apr_pool_t *pool)
{
  svn_fs_id_t *id = FUNC0(pool, sizeof(*id));
  id_private_t *pvt = FUNC0(pool, sizeof(*pvt));

  pvt->node_id = FUNC1(pool, node_id);
  pvt->copy_id = FUNC1(pool, copy_id);
  pvt->txn_id = FUNC1(pool, txn_id);
  id->vtable = &id_vtable;
  id->fsap_data = pvt;
  return id;
}