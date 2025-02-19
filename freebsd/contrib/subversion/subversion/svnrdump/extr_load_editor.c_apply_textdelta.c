
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct svn_delta_editor_t {int (* apply_textdelta ) (int ,int ,int *,int *,void**) ;} ;
struct node_baton {int base_checksum; int file_baton; TYPE_2__* rb; } ;
typedef int apr_pool_t ;
struct TYPE_4__ {int * pool; TYPE_1__* pb; } ;
struct TYPE_3__ {struct svn_delta_editor_t* commit_editor; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int ,int *,int *,void**) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(svn_txdelta_window_handler_t *handler,
                void **handler_baton,
                void *node_baton)
{
  struct node_baton *nb = node_baton;
  const struct svn_delta_editor_t *commit_editor = nb->rb->pb->commit_editor;
  apr_pool_t *pool = nb->rb->pool;

  SVN_ERR(commit_editor->apply_textdelta(nb->file_baton, nb->base_checksum,
                                         pool, handler, handler_baton));

  return SVN_NO_ERROR;
}
