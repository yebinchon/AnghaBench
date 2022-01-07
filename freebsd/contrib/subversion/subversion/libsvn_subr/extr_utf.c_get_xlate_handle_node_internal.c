
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ valid; } ;
typedef TYPE_1__ xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * apr_hash_pool_get (scalar_t__) ;
 TYPE_1__** svn_hash_gets (scalar_t__,char const*) ;
 int * xlate_alloc_handle (TYPE_1__**,char const*,char const*,int *) ;
 scalar_t__ xlate_handle_hash ;

__attribute__((used)) static svn_error_t *
get_xlate_handle_node_internal(xlate_handle_node_t **ret,
                               const char *topage, const char *frompage,
                               const char *userdata_key, apr_pool_t *pool)
{

  if (userdata_key && xlate_handle_hash)
    {
      xlate_handle_node_t *old_node = ((void*)0);


      xlate_handle_node_t **old_node_p = svn_hash_gets(xlate_handle_hash,
                                                       userdata_key);
      if (old_node_p)
        old_node = *old_node_p;
      if (old_node)
        {

          if (old_node->valid)
            {

              *old_node_p = old_node->next;
              old_node->next = ((void*)0);
              *ret = old_node;
              return SVN_NO_ERROR;
            }
        }
    }





  pool = apr_hash_pool_get(xlate_handle_hash);

  return xlate_alloc_handle(ret, topage, frompage, pool);
}
