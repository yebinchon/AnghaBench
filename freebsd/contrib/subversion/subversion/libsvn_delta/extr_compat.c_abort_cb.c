
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct editor_baton {int dedit_baton; TYPE_1__* deditor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* abort_edit ) (int ,int *) ;} ;


 int * drive_changes (struct editor_baton*,int *) ;
 int * stub1 (int ,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int *) ;

__attribute__((used)) static svn_error_t *
abort_cb(void *baton,
         apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  svn_error_t *err;
  svn_error_t *err2;





  err = drive_changes(eb, scratch_pool);

  err2 = eb->deditor->abort_edit(eb->dedit_baton, scratch_pool);

  if (err2)
    {
      if (err)
        svn_error_clear(err2);
      else
        err = err2;
    }

  return svn_error_trace(err);
}
