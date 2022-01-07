
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ depth; scalar_t__ schedule; scalar_t__ absent; scalar_t__ deleted; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_depth_exclude ;
 scalar_t__ svn_wc_schedule_add ;
 scalar_t__ svn_wc_schedule_normal ;

svn_error_t *
svn_wc__entry_is_hidden(svn_boolean_t *hidden, const svn_wc_entry_t *entry)
{


  if (entry->deleted
      || entry->absent
      || entry->depth == svn_depth_exclude)
    {


      SVN_ERR_ASSERT(entry->schedule == svn_wc_schedule_add
                     || entry->schedule == svn_wc_schedule_normal);




      *hidden = entry->schedule != svn_wc_schedule_add;
    }
  else
    *hidden = FALSE;

  return SVN_NO_ERROR;
}
