
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ start; scalar_t__ end; int inheritable; } ;
typedef TYPE_1__ svn_merge_range_t ;
typedef int svn_boolean_t ;


 int IS_VALID_FORWARD_RANGE (TYPE_1__ const*) ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;

__attribute__((used)) static svn_boolean_t
range_intersect(const svn_merge_range_t *first, const svn_merge_range_t *second,
                svn_boolean_t consider_inheritance)
{
  SVN_ERR_ASSERT_NO_RETURN(IS_VALID_FORWARD_RANGE(first));
  SVN_ERR_ASSERT_NO_RETURN(IS_VALID_FORWARD_RANGE(second));

  return (first->start + 1 <= second->end)
    && (second->start + 1 <= first->end)
    && (!consider_inheritance
        || (!(first->inheritable) == !(second->inheritable)));
}
