
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int objects; } ;
typedef TYPE_1__ svn_object_pool__t ;
struct TYPE_9__ {int size; int data; } ;
typedef TYPE_2__ svn_membuf_t ;
typedef int svn_error_t ;
struct TYPE_10__ {void* object; } ;
typedef TYPE_3__ object_ref_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int add_object_ref (TYPE_3__*,int *) ;
 TYPE_3__* apr_hash_get (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
lookup(void **object,
       svn_object_pool__t *object_pool,
       svn_membuf_t *key,
       apr_pool_t *result_pool)
{
  object_ref_t *object_ref
    = apr_hash_get(object_pool->objects, key->data, key->size);

  if (object_ref)
    {
      *object = object_ref->object;
      add_object_ref(object_ref, result_pool);
    }
  else
    {
      *object = ((void*)0);
    }

  return SVN_NO_ERROR;
}
