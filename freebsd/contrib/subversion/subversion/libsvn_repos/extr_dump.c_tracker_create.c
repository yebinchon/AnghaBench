
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {int * pool; int revision; int stack; } ;
typedef TYPE_1__ path_tracker_t ;
typedef int path_tracker_entry_t ;
typedef int apr_pool_t ;


 int apr_array_make (int *,int,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;

__attribute__((used)) static path_tracker_t *
tracker_create(svn_revnum_t revision,
               apr_pool_t *pool)
{
  path_tracker_t *result = apr_pcalloc(pool, sizeof(*result));
  result->stack = apr_array_make(pool, 16, sizeof(path_tracker_entry_t));
  result->revision = revision;
  result->pool = pool;

  return result;
}
