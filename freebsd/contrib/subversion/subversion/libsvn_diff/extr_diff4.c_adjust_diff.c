
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ modified_start; scalar_t__ modified_length; scalar_t__ original_length; scalar_t__ type; struct TYPE_4__* next; } ;
typedef TYPE_1__ svn_diff_t ;
typedef scalar_t__ apr_off_t ;


 scalar_t__ svn_diff__type_conflict ;
 scalar_t__ svn_diff__type_diff_modified ;

__attribute__((used)) static void
adjust_diff(svn_diff_t *diff, svn_diff_t *adjust)
{
  svn_diff_t *hunk;
  apr_off_t range_start;
  apr_off_t range_end;
  apr_off_t adjustment;

  for (; adjust; adjust = adjust->next)
    {
      range_start = adjust->modified_start;
      range_end = range_start + adjust->modified_length;
      adjustment = adjust->original_length - adjust->modified_length;


      if (adjustment == 0)
        continue;

      for (hunk = diff; hunk; hunk = hunk->next)
        {



          if (hunk->modified_start >= range_end)
            {
              hunk->modified_start += adjustment;
              continue;
            }




          if (hunk->modified_start + hunk->modified_length <= range_start)
            continue;





          if (hunk->type == svn_diff__type_diff_modified)
            {
              hunk->modified_length += adjustment;
              continue;
            }





          if (adjustment < 0)
              hunk->type = svn_diff__type_conflict;


          hunk->modified_length -= adjustment;
        }
    }
}
