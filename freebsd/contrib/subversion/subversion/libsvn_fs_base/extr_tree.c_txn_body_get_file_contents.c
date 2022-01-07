
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int pool; int node; int file_stream; int path; int root; } ;
typedef TYPE_2__ file_contents_baton_t ;


 int SVN_ERR (int ) ;
 int get_dag (int *,int ,int ,TYPE_1__*,int ) ;
 int * svn_fs_base__dag_get_contents (int *,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_get_file_contents(void *baton, trail_t *trail)
{
  file_contents_baton_t *fb = (file_contents_baton_t *) baton;


  SVN_ERR(get_dag(&(fb->node), fb->root, fb->path, trail, trail->pool));


  return svn_fs_base__dag_get_contents(&(fb->file_stream),
                                       fb->node, trail, fb->pool);
}
