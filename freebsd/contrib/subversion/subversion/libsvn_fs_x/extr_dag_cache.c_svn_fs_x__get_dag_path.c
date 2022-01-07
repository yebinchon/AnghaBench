
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_16__ {scalar_t__ len; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_17__ {int copy_src_path; int copy_inherit; int node; } ;
typedef TYPE_2__ svn_fs_x__dag_path_t ;
typedef int svn_fs_x__change_set_t ;
typedef int svn_fs_t ;
struct TYPE_18__ {int * fs; } ;
typedef TYPE_3__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int dag_node_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_FS__NOT_FOUND (TYPE_3__*,char const*) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int dag_step (int **,TYPE_3__*,int ,char const*,TYPE_1__*,int ,int ,int *) ;
 int get_copy_inheritance (int *,int *,int *,TYPE_2__*,int *) ;
 int get_root_node (int **,TYPE_3__*,int ,int *) ;
 TYPE_2__* make_parent_path (int *,int *,TYPE_2__*,int *) ;
 char* next_entry_name (TYPE_1__*,int *) ;
 int normalize_path (TYPE_1__*,char const*) ;
 int svn_fs_x__copy_id_inherit_self ;
 scalar_t__ svn_fs_x__dag_node_kind (int ) ;
 int svn_fs_x__dag_path_allow_null ;
 int svn_fs_x__dag_path_last_optional ;
 int svn_fs_x__root_change_set (TYPE_3__*) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_stringbuf_create_ensure (int,int *) ;

svn_error_t *
svn_fs_x__get_dag_path(svn_fs_x__dag_path_t **dag_path_p,
                       svn_fs_root_t *root,
                       const char *fs_path,
                       int flags,
                       svn_boolean_t is_txn_path,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_fs_t *fs = root->fs;
  dag_node_t *here = ((void*)0);
  svn_fs_x__dag_path_t *dag_path;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  svn_fs_x__change_set_t change_set = svn_fs_x__root_change_set(root);
  const char *entry;
  svn_string_t path;
  svn_stringbuf_t *entry_buffer = svn_stringbuf_create_ensure(64,
                                                              scratch_pool);
  apr_size_t path_len;


  normalize_path(&path, fs_path);


  SVN_ERR(get_root_node(&here, root, change_set, iterpool));
  dag_path = make_parent_path(here, entry_buffer, ((void*)0), result_pool);
  dag_path->copy_inherit = svn_fs_x__copy_id_inherit_self;

  path_len = path.len;
  path.len = 0;


  for (entry = next_entry_name(&path, entry_buffer);
       entry;
       entry = next_entry_name(&path, entry_buffer))
    {
      svn_pool_clear(iterpool);




      if ( (flags & svn_fs_x__dag_path_allow_null)
          && (svn_fs_x__dag_node_kind(dag_path->node) != svn_node_dir))
        {
          dag_path = ((void*)0);
          break;
        }


      SVN_ERR(dag_step(&here, root, dag_path->node, entry, &path, change_set,
                       TRUE, iterpool));


      if (here == ((void*)0))
        {




          if ((flags & svn_fs_x__dag_path_last_optional)
              && (path_len == path.len))
            {
              dag_path = make_parent_path(((void*)0), entry_buffer, dag_path,
                                          result_pool);
              break;
            }
          else if (flags & svn_fs_x__dag_path_allow_null)
            {
              dag_path = ((void*)0);
              break;
            }
          else
            {


              return SVN_FS__NOT_FOUND(root, fs_path);
            }
        }


      dag_path = make_parent_path(here, entry_buffer, dag_path, result_pool);
      if (is_txn_path)
        {
          SVN_ERR(get_copy_inheritance(&dag_path->copy_inherit,
                                       &dag_path->copy_src_path,
                                       fs, dag_path, iterpool));
        }
    }

  svn_pool_destroy(iterpool);
  *dag_path_p = dag_path;
  return SVN_NO_ERROR;
}
