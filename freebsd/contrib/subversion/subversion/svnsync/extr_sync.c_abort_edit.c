
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int wrapped_edit_baton; TYPE_1__* wrapped_editor; } ;
typedef TYPE_2__ edit_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int * (* abort_edit ) (int ,int *) ;} ;


 int * stub1 (int ,int *) ;

__attribute__((used)) static svn_error_t *
abort_edit(void *edit_baton,
           apr_pool_t *pool)
{
  edit_baton_t *eb = edit_baton;
  return eb->wrapped_editor->abort_edit(eb->wrapped_edit_baton, pool);
}
