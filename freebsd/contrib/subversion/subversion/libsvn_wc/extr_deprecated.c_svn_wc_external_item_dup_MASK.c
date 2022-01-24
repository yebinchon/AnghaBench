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
struct TYPE_5__ {void* url; void* target_dir; } ;
typedef  TYPE_1__ svn_wc_external_item_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 

svn_wc_external_item_t *
FUNC2(const svn_wc_external_item_t *item,
                         apr_pool_t *pool)
{
  svn_wc_external_item_t *new_item = FUNC0(pool, sizeof(*new_item));

  *new_item = *item;

  if (new_item->target_dir)
    new_item->target_dir = FUNC1(pool, new_item->target_dir);

  if (new_item->url)
    new_item->url = FUNC1(pool, new_item->url);

  return new_item;
}