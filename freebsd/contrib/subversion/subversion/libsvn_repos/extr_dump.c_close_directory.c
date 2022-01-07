
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct edit_baton {int dummy; } ;
struct dir_baton {int deleted_entries; struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int nelts; } ;
typedef TYPE_1__ apr_array_header_t ;
struct TYPE_6__ {char* key; } ;


 TYPE_3__ APR_ARRAY_IDX (TYPE_1__*,int,int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int dump_node (struct edit_baton*,char const*,int ,int ,int ,int *,int ,int *) ;
 int svn_node_action_delete ;
 int svn_node_unknown ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_1__* svn_sort__hash (int ,int ,int *) ;
 int svn_sort__item_t ;
 int svn_sort_compare_items_lexically ;

__attribute__((used)) static svn_error_t *
close_directory(void *dir_baton,
                apr_pool_t *pool)
{
  struct dir_baton *db = dir_baton;
  struct edit_baton *eb = db->edit_baton;
  apr_pool_t *subpool = svn_pool_create(pool);
  int i;
  apr_array_header_t *sorted_entries;





  sorted_entries = svn_sort__hash(db->deleted_entries,
                                  svn_sort_compare_items_lexically, pool);
  for (i = 0; i < sorted_entries->nelts; i++)
    {
      const char *path = APR_ARRAY_IDX(sorted_entries, i,
                                       svn_sort__item_t).key;

      svn_pool_clear(subpool);




      SVN_ERR(dump_node(eb, path,
                        svn_node_unknown, svn_node_action_delete,
                        FALSE, ((void*)0), SVN_INVALID_REVNUM, subpool));
    }

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
