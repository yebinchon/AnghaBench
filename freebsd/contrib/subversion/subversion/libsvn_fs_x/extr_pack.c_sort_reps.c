
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int references; int path_order; } ;
typedef TYPE_1__ pack_context_t ;


 scalar_t__ compare_path_order ;
 scalar_t__ compare_references ;
 int svn_sort__array (int ,int (*) (void const*,void const*)) ;

__attribute__((used)) static void
sort_reps(pack_context_t *context)
{
  svn_sort__array(context->path_order,
                  (int (*)(const void *, const void *))compare_path_order);
  svn_sort__array(context->references,
                  (int (*)(const void *, const void *))compare_references);
}
