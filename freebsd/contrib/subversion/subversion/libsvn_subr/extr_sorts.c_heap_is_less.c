
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* compare_func ) (char*,char*) ;TYPE_1__* elements; } ;
typedef TYPE_2__ svn_priority_queue__t ;
typedef int apr_size_t ;
struct TYPE_4__ {char* elts; int elt_size; scalar_t__ nelts; } ;


 int assert (int) ;
 scalar_t__ stub1 (char*,char*) ;

__attribute__((used)) static int
heap_is_less(svn_priority_queue__t *queue,
             apr_size_t lhs,
             apr_size_t rhs)
{
  char *lhs_value = queue->elements->elts + lhs * queue->elements->elt_size;
  char *rhs_value = queue->elements->elts + rhs * queue->elements->elt_size;


  assert(lhs < (apr_size_t)queue->elements->nelts);
  assert(rhs < (apr_size_t)queue->elements->nelts);
  return queue->compare_func(lhs_value, rhs_value) < 0;
}
