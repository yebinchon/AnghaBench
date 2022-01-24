#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  objects; int /*<<< orphan*/  unused_count; int /*<<< orphan*/  object_count; } ;
typedef  TYPE_1__ svn_object_pool__t ;
struct TYPE_13__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {void* object; TYPE_1__* object_pool; TYPE_4__ key; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_3__ object_ref_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(void **object,
       svn_object_pool__t *object_pool,
       const svn_membuf_t *key,
       void *item,
       apr_pool_t *item_pool,
       apr_pool_t *result_pool)
{
  object_ref_t *object_ref
    = FUNC2(object_pool->objects, key->data, key->size);
  if (object_ref)
    {
      /* Destroy the new one and return a reference to the existing one
       * because the existing one may already have references on it.
       */
      FUNC10(item_pool);
    }
  else
    {
      /* add new index entry */
      object_ref = FUNC4(item_pool, sizeof(*object_ref));
      object_ref->object_pool = object_pool;
      object_ref->object = item;
      object_ref->pool = item_pool;

      FUNC9(&object_ref->key, key->size, item_pool);
      object_ref->key.size = key->size;
      FUNC5(object_ref->key.data, key->data, key->size);

      FUNC3(object_pool->objects, object_ref->key.data,
                   object_ref->key.size, object_ref);
      FUNC7(&object_pool->object_count);

      /* the new entry is *not* in use yet.
       * add_object_ref will update counters again.
       */
      FUNC7(&object_ref->object_pool->unused_count);
    }

  /* return a reference to the object we just added */
  *object = object_ref->object;
  FUNC0(object_ref, result_pool);

  /* limit memory usage */
  if (FUNC8(&object_pool->unused_count) * 2
      > FUNC1(object_pool->objects) + 2)
    FUNC6(object_pool);

  return SVN_NO_ERROR;
}