
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nelts; scalar_t__ elts; } ;
typedef TYPE_1__ svn_rangelist_t ;
struct TYPE_5__ {scalar_t__ start; scalar_t__ end; scalar_t__ inheritable; } ;
typedef TYPE_2__ svn_merge_range_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;

svn_boolean_t
svn_rangelist__is_canonical(const svn_rangelist_t *rangelist)
{
  int i;
  svn_merge_range_t **ranges = (svn_merge_range_t **)rangelist->elts;


  for (i = 0; i < rangelist->nelts; ++i)
    {
      if (ranges[i]->start >= ranges[i]->end)
        return FALSE;
    }


  for (i = 0; i < rangelist->nelts - 1; ++i)
    {
      if (ranges[i]->end > ranges[i + 1]->start)
        return FALSE;
      else if (ranges[i]->end == ranges[i+1]->start
               && ranges[i]->inheritable == ranges[i + 1]->inheritable)
        {
          return FALSE;
        }
    }

  return TRUE;
}
