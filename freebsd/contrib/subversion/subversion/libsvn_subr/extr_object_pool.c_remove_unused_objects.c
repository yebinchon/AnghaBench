
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int unused_count; int object_count; int objects; int pool; } ;
typedef TYPE_2__ svn_object_pool__t ;
struct TYPE_6__ {int size; int data; } ;
struct TYPE_8__ {int * pool; TYPE_1__ key; int ref_count; } ;
typedef TYPE_3__ object_ref_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (int ,int ,int ,int *) ;
 TYPE_3__* apr_hash_this_val (int *) ;
 int svn_atomic_dec (int *) ;
 scalar_t__ svn_atomic_read (int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static void
remove_unused_objects(svn_object_pool__t *object_pool)
{
  apr_pool_t *subpool = svn_pool_create(object_pool->pool);


  apr_hash_index_t *hi;
  for (hi = apr_hash_first(subpool, object_pool->objects);
       hi != ((void*)0);
       hi = apr_hash_next(hi))
    {
      object_ref_t *object_ref = apr_hash_this_val(hi);



      if (svn_atomic_read(&object_ref->ref_count) == 0)
        {
          apr_hash_set(object_pool->objects, object_ref->key.data,
                       object_ref->key.size, ((void*)0));
          svn_atomic_dec(&object_pool->object_count);
          svn_atomic_dec(&object_pool->unused_count);

          svn_pool_destroy(object_ref->pool);
        }
    }

  svn_pool_destroy(subpool);
}
