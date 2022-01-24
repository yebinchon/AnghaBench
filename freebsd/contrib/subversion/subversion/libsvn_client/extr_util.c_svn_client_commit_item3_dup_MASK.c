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
struct TYPE_5__ {void* moved_from_abspath; void* session_relpath; void* outgoing_prop_changes; void* incoming_prop_changes; void* copyfrom_url; void* url; void* path; } ;
typedef  TYPE_1__ svn_client_commit_item3_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 

svn_client_commit_item3_t *
FUNC3(const svn_client_commit_item3_t *item,
                            apr_pool_t *pool)
{
  svn_client_commit_item3_t *new_item = FUNC0(pool, sizeof(*new_item));

  *new_item = *item;

  if (new_item->path)
    new_item->path = FUNC1(pool, new_item->path);

  if (new_item->url)
    new_item->url = FUNC1(pool, new_item->url);

  if (new_item->copyfrom_url)
    new_item->copyfrom_url = FUNC1(pool, new_item->copyfrom_url);

  if (new_item->incoming_prop_changes)
    new_item->incoming_prop_changes =
      FUNC2(new_item->incoming_prop_changes, pool);

  if (new_item->outgoing_prop_changes)
    new_item->outgoing_prop_changes =
      FUNC2(new_item->outgoing_prop_changes, pool);

  if (new_item->session_relpath)
    new_item->session_relpath = FUNC1(pool, new_item->session_relpath);

  if (new_item->moved_from_abspath)
    new_item->moved_from_abspath = FUNC1(pool,
                                               new_item->moved_from_abspath);

  return new_item;
}