
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; struct TYPE_8__* next; struct TYPE_8__* children; int data; scalar_t__ is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int svn_error_t ;
struct TYPE_9__ {scalar_t__ kind; int predecessor_count; int has_mergeinfo; void* edit_key; int * data_key_uniquifier; void* data_key; void* prop_key; int mergeinfo_count; int predecessor_id; void* created_path; } ;
typedef TYPE_2__ node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 void* apr_pstrmemdup (int *,int ,scalar_t__) ;
 int is_valid_node_revision_skel (TYPE_1__*) ;
 int * skel_err (char*) ;
 int svn_cstring_atoi (int*,char const*) ;
 int svn_cstring_atoi64 (int *,char const*) ;
 int svn_fs_base__id_parse (int ,scalar_t__,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_skel__matches_atom (TYPE_1__*,char*) ;

svn_error_t *
svn_fs_base__parse_node_revision_skel(node_revision_t **noderev_p,
                                      svn_skel_t *skel,
                                      apr_pool_t *pool)
{
  node_revision_t *noderev;
  svn_skel_t *header_skel, *cur_skel;


  if (! is_valid_node_revision_skel(skel))
    return skel_err("node-revision");
  header_skel = skel->children;


  noderev = apr_pcalloc(pool, sizeof(*noderev));


  if (svn_skel__matches_atom(header_skel->children, "dir"))
    noderev->kind = svn_node_dir;
  else
    noderev->kind = svn_node_file;


  noderev->created_path = apr_pstrmemdup(pool,
                                         header_skel->children->next->data,
                                         header_skel->children->next->len);


  if (header_skel->children->next->next)
    {
      cur_skel = header_skel->children->next->next;
      if (cur_skel->len)
        noderev->predecessor_id = svn_fs_base__id_parse(cur_skel->data,
                                                        cur_skel->len, pool);


      noderev->predecessor_count = -1;
      if (cur_skel->next)
        {
          const char *str;

          cur_skel = cur_skel->next;
          if (cur_skel->len)
            {
              str = apr_pstrmemdup(pool, cur_skel->data, cur_skel->len);
              SVN_ERR(svn_cstring_atoi(&noderev->predecessor_count, str));
            }


          if (cur_skel->next)
            {
              int val;

              cur_skel = cur_skel->next;
              str = apr_pstrmemdup(pool, cur_skel->data, cur_skel->len);
              SVN_ERR(svn_cstring_atoi(&val, str));
              noderev->has_mergeinfo = (val != 0);

              str = apr_pstrmemdup(pool, cur_skel->next->data,
                                   cur_skel->next->len);
              SVN_ERR(svn_cstring_atoi64(&noderev->mergeinfo_count, str));
            }
        }
    }


  if (skel->children->next->len)
    noderev->prop_key = apr_pstrmemdup(pool, skel->children->next->data,
                                       skel->children->next->len);


  if (skel->children->next->next->is_atom)
    {

      if (skel->children->next->next->len)
        noderev->data_key = apr_pstrmemdup(pool,
                                           skel->children->next->next->data,
                                           skel->children->next->next->len);
      noderev->data_key_uniquifier = ((void*)0);
    }
  else
    {

      noderev->data_key =
        apr_pstrmemdup(pool,
                       skel->children->next->next->children->data,
                       skel->children->next->next->children->len);
      noderev->data_key_uniquifier =
        apr_pstrmemdup(pool,
                       skel->children->next->next->children->next->data,
                       skel->children->next->next->children->next->len);
    }


  if ((noderev->kind == svn_node_file)
      && skel->children->next->next->next
      && skel->children->next->next->next->len)
    noderev->edit_key
      = apr_pstrmemdup(pool, skel->children->next->next->next->data,
                       skel->children->next->next->next->len);


  *noderev_p = noderev;
  return SVN_NO_ERROR;
}
