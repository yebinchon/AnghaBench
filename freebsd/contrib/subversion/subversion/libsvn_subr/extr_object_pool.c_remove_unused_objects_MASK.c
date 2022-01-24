#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  unused_count; int /*<<< orphan*/  object_count; int /*<<< orphan*/  objects; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ svn_object_pool__t ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pool; TYPE_1__ key; int /*<<< orphan*/  ref_count; } ;
typedef  TYPE_3__ object_ref_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(svn_object_pool__t *object_pool)
{
  apr_pool_t *subpool = FUNC6(object_pool->pool);

  /* process all hash buckets */
  apr_hash_index_t *hi;
  for (hi = FUNC0(subpool, object_pool->objects);
       hi != NULL;
       hi = FUNC1(hi))
    {
      object_ref_t *object_ref = FUNC3(hi);

      /* note that we won't hand out new references while access
         to the hash is serialized */
      if (FUNC5(&object_ref->ref_count) == 0)
        {
          FUNC2(object_pool->objects, object_ref->key.data,
                       object_ref->key.size, NULL);
          FUNC4(&object_pool->object_count);
          FUNC4(&object_pool->unused_count);

          FUNC7(object_ref->pool);
        }
    }

  FUNC7(subpool);
}