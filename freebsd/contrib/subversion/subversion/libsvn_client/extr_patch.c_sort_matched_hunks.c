
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ svn_linenum_t ;
typedef int svn_boolean_t ;
struct TYPE_2__ {scalar_t__ matched_line; int hunk; int already_applied; int rejected; } ;
typedef TYPE_1__ hunk_info_t ;


 scalar_t__ svn_diff_hunk_get_original_start (int ) ;

__attribute__((used)) static int
sort_matched_hunks(const void *a, const void *b)
{
  const hunk_info_t *item1 = *((const hunk_info_t * const *)a);
  const hunk_info_t *item2 = *((const hunk_info_t * const *)b);
  svn_boolean_t matched1 = !item1->rejected && !item1->already_applied;
  svn_boolean_t matched2 = !item2->rejected && !item2->already_applied;
  svn_linenum_t original1, original2;

  if (matched1 && matched2)
    {

      if (item1->matched_line > item2->matched_line)
        return 1;
      else if (item1->matched_line == item2->matched_line)
        return 0;
      else
        return -1;
    }
  else if (matched2)

    return 1;
  else if (matched1)

    return -1;


  original1 = svn_diff_hunk_get_original_start(item1->hunk);
  original2 = svn_diff_hunk_get_original_start(item2->hunk);
  if (original1 > original2)
    return 1;
  else if (original1 == original2)
    return 0;
  else
    return -1;
}
