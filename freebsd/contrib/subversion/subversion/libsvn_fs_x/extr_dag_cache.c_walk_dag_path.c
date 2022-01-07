
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_21__ {scalar_t__ len; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_fs_x__change_set_t ;
struct TYPE_22__ {int is_txn_root; } ;
typedef TYPE_3__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * dag_node_cache_get (TYPE_3__*,TYPE_2__*) ;
 int dag_step (int **,TYPE_3__*,int *,char const*,TYPE_2__*,int ,int ,int *) ;
 scalar_t__ extract_last_segment (TYPE_2__*,TYPE_2__*,TYPE_1__*) ;
 int get_root_node (int **,TYPE_3__*,int ,int *) ;
 char* next_entry_name (TYPE_2__*,TYPE_1__*) ;
 int * svn_error_trace (int ) ;
 int svn_fs_x__root_change_set (TYPE_3__*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_stringbuf_create_ensure (int,int *) ;
 int try_match_last_node (int **,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
walk_dag_path(dag_node_t **node_p,
              svn_fs_root_t *root,
              svn_string_t *path,
              apr_pool_t *scratch_pool)
{
  dag_node_t *here = ((void*)0);
  apr_pool_t *iterpool;
  svn_fs_x__change_set_t change_set = svn_fs_x__root_change_set(root);
  const char *entry;
  svn_string_t directory;
  svn_stringbuf_t *entry_buffer;




  if (path->len == 0)
    return svn_error_trace(get_root_node(node_p, root, change_set,
                                         scratch_pool));
  if (!root->is_txn_root)
    {
      SVN_ERR(try_match_last_node(node_p, root, path));


      if (*node_p)
          return SVN_NO_ERROR;
    }





  entry_buffer = svn_stringbuf_create_ensure(64, scratch_pool);
  if (extract_last_segment(path, &directory, entry_buffer))
    {
      here = dag_node_cache_get(root, &directory);


      if (here)
        return svn_error_trace(dag_step(node_p, root, here,
                                        entry_buffer->data, path,
                                        change_set, FALSE, scratch_pool));
    }


  iterpool = svn_pool_create(scratch_pool);



  SVN_ERR(get_root_node(&here, root, change_set, iterpool));
  path->len = 0;


  for (entry = next_entry_name(path, entry_buffer);
       entry;
       entry = next_entry_name(path, entry_buffer))
    {
      svn_pool_clear(iterpool);



      SVN_ERR(dag_step(&here, root, here, entry, path, change_set, FALSE,
                       iterpool));
    }

  svn_pool_destroy(iterpool);
  *node_p = here;

  return SVN_NO_ERROR;
}
