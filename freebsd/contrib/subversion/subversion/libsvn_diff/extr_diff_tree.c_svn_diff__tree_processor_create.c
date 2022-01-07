
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int node_absent; int file_closed; int file_changed; int file_deleted; int file_added; int file_opened; int dir_closed; int dir_changed; int dir_deleted; int dir_added; int dir_opened; void* baton; } ;
struct TYPE_5__ {TYPE_2__ tp; } ;
typedef TYPE_1__ tree_processor_t ;
typedef TYPE_2__ svn_diff_tree_processor_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int default_dir_added ;
 int default_dir_changed ;
 int default_dir_closed ;
 int default_dir_deleted ;
 int default_dir_opened ;
 int default_file_added ;
 int default_file_changed ;
 int default_file_closed ;
 int default_file_deleted ;
 int default_file_opened ;
 int default_node_absent ;

svn_diff_tree_processor_t *
svn_diff__tree_processor_create(void *baton,
                                apr_pool_t *result_pool)
{
  tree_processor_t *wrapper;
  wrapper = apr_pcalloc(result_pool, sizeof(*wrapper));

  wrapper->tp.baton = baton;

  wrapper->tp.dir_opened = default_dir_opened;
  wrapper->tp.dir_added = default_dir_added;
  wrapper->tp.dir_deleted = default_dir_deleted;
  wrapper->tp.dir_changed = default_dir_changed;
  wrapper->tp.dir_closed = default_dir_closed;

  wrapper->tp.file_opened = default_file_opened;
  wrapper->tp.file_added = default_file_added;
  wrapper->tp.file_deleted = default_file_deleted;
  wrapper->tp.file_changed = default_file_changed;
  wrapper->tp.file_closed = default_file_closed;

  wrapper->tp.node_absent = default_node_absent;


  return &wrapper->tp;
}
