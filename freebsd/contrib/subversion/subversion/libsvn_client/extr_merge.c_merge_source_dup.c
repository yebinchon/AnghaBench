
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ancestral; void* loc2; void* loc1; } ;
typedef TYPE_1__ merge_source_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 void* svn_client__pathrev_dup (void*,int *) ;

__attribute__((used)) static merge_source_t *
merge_source_dup(const merge_source_t *source,
                 apr_pool_t *result_pool)
{
  merge_source_t *s = apr_palloc(result_pool, sizeof(*s));

  s->loc1 = svn_client__pathrev_dup(source->loc1, result_pool);
  s->loc2 = svn_client__pathrev_dup(source->loc2, result_pool);
  s->ancestral = source->ancestral;
  return s;
}
