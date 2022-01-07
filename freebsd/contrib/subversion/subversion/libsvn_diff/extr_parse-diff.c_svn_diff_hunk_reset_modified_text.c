
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int start; int current; } ;
struct TYPE_7__ {int start; int current; } ;
struct TYPE_9__ {TYPE_3__ modified_text_range; TYPE_2__ original_text_range; TYPE_1__* patch; } ;
typedef TYPE_4__ svn_diff_hunk_t ;
struct TYPE_6__ {scalar_t__ reverse; } ;



void
svn_diff_hunk_reset_modified_text(svn_diff_hunk_t *hunk)
{
  if (hunk->patch->reverse)
    hunk->original_text_range.current = hunk->original_text_range.start;
  else
    hunk->modified_text_range.current = hunk->modified_text_range.start;
}
