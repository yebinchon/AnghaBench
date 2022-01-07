
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_client__pathrev_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {int ancestral; void* loc2; void* loc1; } ;
typedef TYPE_1__ merge_source_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 void* svn_client__pathrev_dup (int const*,int *) ;

__attribute__((used)) static merge_source_t *
merge_source_create(const svn_client__pathrev_t *loc1,
                    const svn_client__pathrev_t *loc2,
                    svn_boolean_t ancestral,
                    apr_pool_t *result_pool)
{
  merge_source_t *s
    = apr_palloc(result_pool, sizeof(*s));

  s->loc1 = svn_client__pathrev_dup(loc1, result_pool);
  s->loc2 = svn_client__pathrev_dup(loc2, result_pool);
  s->ancestral = ancestral;
  return s;
}
