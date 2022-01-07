
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int objects; int unused_count; int object_count; } ;
typedef TYPE_1__ svn_object_pool__t ;
struct TYPE_13__ {int size; int data; } ;
typedef TYPE_2__ svn_membuf_t ;
typedef int svn_error_t ;
struct TYPE_15__ {int size; int data; } ;
struct TYPE_14__ {void* object; TYPE_1__* object_pool; TYPE_4__ key; int * pool; } ;
typedef TYPE_3__ object_ref_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int add_object_ref (TYPE_3__*,int *) ;
 int apr_hash_count (int ) ;
 TYPE_3__* apr_hash_get (int ,int ,int ) ;
 int apr_hash_set (int ,int ,int ,TYPE_3__*) ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 int memcpy (int ,int ,int ) ;
 int remove_unused_objects (TYPE_1__*) ;
 int svn_atomic_inc (int *) ;
 int svn_atomic_read (int *) ;
 int svn_membuf__create (TYPE_4__*,int ,int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
insert(void **object,
       svn_object_pool__t *object_pool,
       const svn_membuf_t *key,
       void *item,
       apr_pool_t *item_pool,
       apr_pool_t *result_pool)
{
  object_ref_t *object_ref
    = apr_hash_get(object_pool->objects, key->data, key->size);
  if (object_ref)
    {



      svn_pool_destroy(item_pool);
    }
  else
    {

      object_ref = apr_pcalloc(item_pool, sizeof(*object_ref));
      object_ref->object_pool = object_pool;
      object_ref->object = item;
      object_ref->pool = item_pool;

      svn_membuf__create(&object_ref->key, key->size, item_pool);
      object_ref->key.size = key->size;
      memcpy(object_ref->key.data, key->data, key->size);

      apr_hash_set(object_pool->objects, object_ref->key.data,
                   object_ref->key.size, object_ref);
      svn_atomic_inc(&object_pool->object_count);




      svn_atomic_inc(&object_ref->object_pool->unused_count);
    }


  *object = object_ref->object;
  add_object_ref(object_ref, result_pool);


  if (svn_atomic_read(&object_pool->unused_count) * 2
      > apr_hash_count(object_pool->objects) + 2)
    remove_unused_objects(object_pool);

  return SVN_NO_ERROR;
}
