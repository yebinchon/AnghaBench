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
struct TYPE_5__ {char* cachable_props; char* present_props; void* file_external_path; void* tree_conflict_data; void* changelist; void* lock_comment; void* lock_owner; void* lock_token; void* cmt_author; void* checksum; void* prejfile; void* conflict_wrk; void* conflict_new; void* conflict_old; void* copyfrom_url; void* uuid; void* repos; void* url; void* name; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*) ; 

svn_wc_entry_t *
FUNC2(const svn_wc_entry_t *entry, apr_pool_t *pool)
{
  svn_wc_entry_t *dupentry = FUNC0(pool, sizeof(*dupentry));

  /* Perform a trivial copy ... */
  *dupentry = *entry;

  /* ...and then re-copy stuff that needs to be duped into our pool. */
  if (entry->name)
    dupentry->name = FUNC1(pool, entry->name);
  if (entry->url)
    dupentry->url = FUNC1(pool, entry->url);
  if (entry->repos)
    dupentry->repos = FUNC1(pool, entry->repos);
  if (entry->uuid)
    dupentry->uuid = FUNC1(pool, entry->uuid);
  if (entry->copyfrom_url)
    dupentry->copyfrom_url = FUNC1(pool, entry->copyfrom_url);
  if (entry->conflict_old)
    dupentry->conflict_old = FUNC1(pool, entry->conflict_old);
  if (entry->conflict_new)
    dupentry->conflict_new = FUNC1(pool, entry->conflict_new);
  if (entry->conflict_wrk)
    dupentry->conflict_wrk = FUNC1(pool, entry->conflict_wrk);
  if (entry->prejfile)
    dupentry->prejfile = FUNC1(pool, entry->prejfile);
  if (entry->checksum)
    dupentry->checksum = FUNC1(pool, entry->checksum);
  if (entry->cmt_author)
    dupentry->cmt_author = FUNC1(pool, entry->cmt_author);
  if (entry->lock_token)
    dupentry->lock_token = FUNC1(pool, entry->lock_token);
  if (entry->lock_owner)
    dupentry->lock_owner = FUNC1(pool, entry->lock_owner);
  if (entry->lock_comment)
    dupentry->lock_comment = FUNC1(pool, entry->lock_comment);
  if (entry->changelist)
    dupentry->changelist = FUNC1(pool, entry->changelist);

  /* NOTE: we do not dup cachable_props or present_props since they
     are deprecated. Use "" to indicate "nothing cachable or cached". */
  dupentry->cachable_props = "";
  dupentry->present_props = "";

  if (entry->tree_conflict_data)
    dupentry->tree_conflict_data = FUNC1(pool,
                                               entry->tree_conflict_data);
  if (entry->file_external_path)
    dupentry->file_external_path = FUNC1(pool,
                                               entry->file_external_path);
  return dupentry;
}