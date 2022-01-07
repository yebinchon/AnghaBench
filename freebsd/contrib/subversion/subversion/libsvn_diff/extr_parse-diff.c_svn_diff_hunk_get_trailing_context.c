
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_linenum_t ;
struct TYPE_3__ {int trailing_context; } ;
typedef TYPE_1__ svn_diff_hunk_t ;



svn_linenum_t
svn_diff_hunk_get_trailing_context(const svn_diff_hunk_t *hunk)
{
  return hunk->trailing_context;
}
