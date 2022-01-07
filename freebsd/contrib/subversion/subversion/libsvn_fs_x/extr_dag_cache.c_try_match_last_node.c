
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
struct TYPE_13__ {int * dag_node_cache; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
typedef int svn_fs_x__dag_cache_t ;
typedef int svn_fs_x__change_set_t ;
struct TYPE_14__ {scalar_t__ rev; TYPE_1__* fs; } ;
typedef TYPE_4__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
struct TYPE_15__ {int * node; } ;
typedef TYPE_5__ cache_entry_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;


 int * SVN_NO_ERROR ;
 int auto_clear_dag_cache (int *) ;
 TYPE_5__* cache_lookup (int *,int ,TYPE_2__ const*) ;
 int * cache_lookup_last_path (int *,TYPE_2__ const*) ;
 scalar_t__ memcmp (char const*,int ,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int svn_fs_x__change_set_by_rev (scalar_t__) ;
 int svn_fs_x__dag_check_mutable (int *) ;
 char* svn_fs_x__dag_get_created_path (int *) ;
 scalar_t__ svn_fs_x__dag_get_revision (int *) ;

__attribute__((used)) static svn_error_t *
try_match_last_node(dag_node_t **node_p,
                    svn_fs_root_t *root,
                    const svn_string_t *path)
{
  svn_fs_x__data_t *ffd = root->fs->fsap_data;



  dag_node_t *node = cache_lookup_last_path(ffd->dag_node_cache, path);


  if (node && !svn_fs_x__dag_check_mutable(node))
    {



      const char *created_path
        = svn_fs_x__dag_get_created_path(node) + 1;
      svn_revnum_t revision = svn_fs_x__dag_get_revision(node);


      if ( revision == root->rev
          && strlen(created_path) == path->len
          && memcmp(created_path, path->data, path->len) == 0)
        {
          svn_fs_x__dag_cache_t *cache = ffd->dag_node_cache;




          if (!auto_clear_dag_cache(cache))
            {

              svn_fs_x__change_set_t change_set
                = svn_fs_x__change_set_by_rev(revision);
              cache_entry_t *bucket = cache_lookup(cache, change_set, path);
              bucket->node = node;

              *node_p = node;
              return SVN_NO_ERROR;
            }
        }
    }

  *node_p = ((void*)0);
  return SVN_NO_ERROR;
}
