
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct editor_baton {int dedit_baton; TYPE_1__* deditor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* abort_edit ) (int ,int *) ;int (* close_edit ) (int ,int *) ;} ;


 int * drive_changes (struct editor_baton*,int *) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;
 int svn_error_clear (int ) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int *) ;

__attribute__((used)) static svn_error_t *
complete_cb(void *baton,
            apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  svn_error_t *err;


  err = drive_changes(eb, scratch_pool);
  if (!err)
     {
       err = svn_error_compose_create(err, eb->deditor->close_edit(
                                                            eb->dedit_baton,
                                                            scratch_pool));
     }

  if (err)
    svn_error_clear(eb->deditor->abort_edit(eb->dedit_baton, scratch_pool));

  return svn_error_trace(err);
}
