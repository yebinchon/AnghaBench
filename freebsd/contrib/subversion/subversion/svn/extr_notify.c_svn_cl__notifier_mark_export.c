
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct notify_baton {int is_export; } ;


 int * SVN_NO_ERROR ;
 int TRUE ;

svn_error_t *
svn_cl__notifier_mark_export(void *baton)
{
  struct notify_baton *nb = baton;

  nb->is_export = TRUE;
  return SVN_NO_ERROR;
}
