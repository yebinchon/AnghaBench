#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* moved_to_abspath; void* moved_from_abspath; void* repos_uuid; void* repos_relpath; void* repos_root_url; void* changelist; void* lock; void* ood_changed_author; void* changed_author; void* repos_lock; } ;
typedef  TYPE_1__ svn_wc_status3_t ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef  TYPE_2__ svn_wc__internal_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *) ; 

svn_wc_status3_t *
FUNC3(const svn_wc_status3_t *orig_stat,
                   apr_pool_t *pool)
{
  /* Allocate slightly more room */
  svn_wc__internal_status_t *new_istat = FUNC0(pool, sizeof(*new_istat));
  svn_wc_status3_t *new_stat = &new_istat->s;

  /* Shallow copy all members. */
  *new_stat = *orig_stat;

  /* Now go back and dup the deep items into this pool. */
  if (orig_stat->repos_lock)
    new_stat->repos_lock = FUNC2(orig_stat->repos_lock, pool);

  if (orig_stat->changed_author)
    new_stat->changed_author = FUNC1(pool, orig_stat->changed_author);

  if (orig_stat->ood_changed_author)
    new_stat->ood_changed_author
      = FUNC1(pool, orig_stat->ood_changed_author);

  if (orig_stat->lock)
    new_stat->lock = FUNC2(orig_stat->lock, pool);

  if (orig_stat->changelist)
    new_stat->changelist
      = FUNC1(pool, orig_stat->changelist);

  if (orig_stat->repos_root_url)
    new_stat->repos_root_url
      = FUNC1(pool, orig_stat->repos_root_url);

  if (orig_stat->repos_relpath)
    new_stat->repos_relpath
      = FUNC1(pool, orig_stat->repos_relpath);

  if (orig_stat->repos_uuid)
    new_stat->repos_uuid
      = FUNC1(pool, orig_stat->repos_uuid);

  if (orig_stat->moved_from_abspath)
    new_stat->moved_from_abspath
      = FUNC1(pool, orig_stat->moved_from_abspath);

  if (orig_stat->moved_to_abspath)
    new_stat->moved_to_abspath
      = FUNC1(pool, orig_stat->moved_to_abspath);

  /* Return the new hotness. */
  return new_stat;
}