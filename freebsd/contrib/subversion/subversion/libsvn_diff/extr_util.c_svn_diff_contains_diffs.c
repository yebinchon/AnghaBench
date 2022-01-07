
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* next; } ;
typedef TYPE_1__ svn_diff_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ svn_diff__type_common ;

svn_boolean_t
svn_diff_contains_diffs(svn_diff_t *diff)
{
  while (diff != ((void*)0))
    {
      if (diff->type != svn_diff__type_common)
        {
          return TRUE;
        }

      diff = diff->next;
    }

  return FALSE;
}
