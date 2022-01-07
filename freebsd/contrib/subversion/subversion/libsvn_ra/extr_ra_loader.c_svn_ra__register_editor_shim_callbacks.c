
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_delta_shim_callbacks_t ;
struct TYPE_5__ {int (* register_editor_shim_callbacks ) (TYPE_2__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__*,int *) ;

svn_error_t *
svn_ra__register_editor_shim_callbacks(svn_ra_session_t *session,
                                       svn_delta_shim_callbacks_t *callbacks)
{
  SVN_ERR(session->vtable->register_editor_shim_callbacks(session, callbacks));
  return SVN_NO_ERROR;
}
