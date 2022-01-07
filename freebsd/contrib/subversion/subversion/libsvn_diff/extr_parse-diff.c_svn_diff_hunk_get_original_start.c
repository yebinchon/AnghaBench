
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_linenum_t ;
struct TYPE_5__ {int original_start; int modified_start; TYPE_1__* patch; } ;
typedef TYPE_2__ svn_diff_hunk_t ;
struct TYPE_4__ {scalar_t__ reverse; } ;



svn_linenum_t
svn_diff_hunk_get_original_start(const svn_diff_hunk_t *hunk)
{
  return hunk->patch->reverse ? hunk->modified_start : hunk->original_start;
}
