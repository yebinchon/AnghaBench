
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ xlate_handle_node_t ;
typedef int svn_error_t ;


 int * SVN_NO_ERROR ;
 int apr_hash_pool_get (int ) ;
 TYPE_1__** apr_palloc (int ,int) ;
 char* apr_pstrdup (int ,char const*) ;
 TYPE_1__** svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,TYPE_1__**) ;
 int xlate_handle_hash ;

__attribute__((used)) static svn_error_t *
put_xlate_handle_node_internal(xlate_handle_node_t *node,
                               const char *userdata_key)
{
  xlate_handle_node_t **node_p = svn_hash_gets(xlate_handle_hash, userdata_key);
  if (node_p == ((void*)0))
    {
      userdata_key = apr_pstrdup(apr_hash_pool_get(xlate_handle_hash),
                                  userdata_key);
      node_p = apr_palloc(apr_hash_pool_get(xlate_handle_hash),
                          sizeof(*node_p));
      *node_p = ((void*)0);
      svn_hash_sets(xlate_handle_hash, userdata_key, node_p);
    }
  node->next = *node_p;
  *node_p = node;

  return SVN_NO_ERROR;
}
