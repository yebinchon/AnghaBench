#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ insertions; int /*<<< orphan*/  buckets; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ fs_fs_dag_cache_t ;

/* Variables and functions */
 scalar_t__ BUCKET_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(fs_fs_dag_cache_t* cache)
{
  if (cache->insertions > BUCKET_COUNT)
    {
      FUNC1(cache->pool);

      FUNC0(cache->buckets, 0, sizeof(cache->buckets));
      cache->insertions = 0;
    }
}