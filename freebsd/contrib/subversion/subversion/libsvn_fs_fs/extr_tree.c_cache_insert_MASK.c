#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_5__ {int last_hit; int /*<<< orphan*/  insertions; int /*<<< orphan*/  pool; TYPE_2__* buckets; } ;
typedef  TYPE_1__ fs_fs_dag_cache_t ;
typedef  int /*<<< orphan*/  dag_node_t ;
struct TYPE_6__ {int hash_value; int path_len; int /*<<< orphan*/  node; int /*<<< orphan*/  path; int /*<<< orphan*/  revision; } ;
typedef  TYPE_2__ cache_entry_t ;
typedef  int apr_uint32_t ;
typedef  int apr_size_t ;

/* Variables and functions */
 int BUCKET_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(fs_fs_dag_cache_t *cache,
             svn_revnum_t revision,
             const char *path,
             dag_node_t *node)
{
  apr_size_t bucket_index;
  apr_size_t path_len = FUNC4(path);
  apr_uint32_t hash_value;
  cache_entry_t *entry;

  FUNC1(cache);

  /* calculate the bucket index to use */
  hash_value = FUNC2(revision, path, path_len);

  bucket_index = hash_value + (hash_value >> 16);
  bucket_index = (bucket_index + (bucket_index >> 8)) % BUCKET_COUNT;

  /* access the corresponding bucket and remember its location */
  entry = &cache->buckets[bucket_index];
  cache->last_hit = bucket_index;

  /* if it is *NOT* a match,  clear the bucket, expect the caller to fill
     in the node and count it as an insertion */
  entry->hash_value = hash_value;
  entry->revision = revision;
  if (entry->path_len < path_len)
    entry->path = FUNC0(cache->pool, path_len + 1);
  entry->path_len = path_len;
  FUNC3(entry->path, path, path_len + 1);

  entry->node = FUNC5(node, cache->pool);
  cache->insertions++;
}