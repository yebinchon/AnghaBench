
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct node_baton {int wrapped_baton; int filtered; struct edit_baton* edit_baton; } ;
struct edit_baton {TYPE_1__* wrapped_editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* close_file ) (int ,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *text_checksum,
           apr_pool_t *pool)
{
  struct node_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;


  if (! fb->filtered)
    SVN_ERR(eb->wrapped_editor->close_file(fb->wrapped_baton,
                                           text_checksum, pool));

  return SVN_NO_ERROR;
}
