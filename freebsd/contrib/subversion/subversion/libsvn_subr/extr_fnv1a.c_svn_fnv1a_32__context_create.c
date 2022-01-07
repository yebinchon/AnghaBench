
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash; } ;
typedef TYPE_1__ svn_fnv1a_32__context_t ;
typedef int apr_pool_t ;


 int FNV1_BASE_32 ;
 TYPE_1__* apr_palloc (int *,int) ;

svn_fnv1a_32__context_t *
svn_fnv1a_32__context_create(apr_pool_t *pool)
{
  svn_fnv1a_32__context_t *context = apr_palloc(pool, sizeof(*context));
  context->hash = FNV1_BASE_32;

  return context;
}
