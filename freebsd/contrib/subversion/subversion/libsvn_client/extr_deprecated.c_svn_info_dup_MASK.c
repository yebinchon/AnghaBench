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
struct TYPE_5__ {void* prejfile; void* conflict_wrk; void* conflict_new; void* conflict_old; void* checksum; void* copyfrom_url; scalar_t__ lock; void* last_changed_author; void* repos_UUID; void* repos_root_URL; void* URL; } ;
typedef  TYPE_1__ svn_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_info_t *
FUNC3(const svn_info_t *info, apr_pool_t *pool)
{
  svn_info_t *dupinfo = FUNC0(pool, sizeof(*dupinfo));

  /* Perform a trivial copy ... */
  *dupinfo = *info;

  /* ...and then re-copy stuff that needs to be duped into our pool. */
  if (info->URL)
    dupinfo->URL = FUNC1(pool, info->URL);
  if (info->repos_root_URL)
    dupinfo->repos_root_URL = FUNC1(pool, info->repos_root_URL);
  if (info->repos_UUID)
    dupinfo->repos_UUID = FUNC1(pool, info->repos_UUID);
  if (info->last_changed_author)
    dupinfo->last_changed_author = FUNC1(pool,
                                               info->last_changed_author);
  if (info->lock)
    dupinfo->lock = FUNC2(info->lock, pool);
  if (info->copyfrom_url)
    dupinfo->copyfrom_url = FUNC1(pool, info->copyfrom_url);
  if (info->checksum)
    dupinfo->checksum = FUNC1(pool, info->checksum);
  if (info->conflict_old)
    dupinfo->conflict_old = FUNC1(pool, info->conflict_old);
  if (info->conflict_new)
    dupinfo->conflict_new = FUNC1(pool, info->conflict_new);
  if (info->conflict_wrk)
    dupinfo->conflict_wrk = FUNC1(pool, info->conflict_wrk);
  if (info->prejfile)
    dupinfo->prejfile = FUNC1(pool, info->prejfile);

  return dupinfo;
}