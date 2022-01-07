
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * next; } ;
typedef TYPE_1__ xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 char const* SVN_UTF_NTOU_XLATE_HANDLE ;
 char const* SVN_UTF_UTON_XLATE_HANDLE ;
 int apr_pool_cleanup_null ;
 int apr_pool_userdata_set (TYPE_1__*,char const*,int ,int *) ;
 int assert (int ) ;
 TYPE_1__* atomic_swap (int *,TYPE_1__*) ;
 int put_xlate_handle_node_internal (TYPE_1__*,char const*) ;
 int xlat_ntou_static_handle ;
 int xlat_uton_static_handle ;
 scalar_t__ xlate_handle_hash ;
 int xlate_handle_mutex ;

__attribute__((used)) static svn_error_t *
put_xlate_handle_node(xlate_handle_node_t *node,
                      const char *userdata_key,
                      apr_pool_t *pool)
{
  assert(node->next == ((void*)0));
  if (!userdata_key)
    return SVN_NO_ERROR;


  if (xlate_handle_hash)
    {

      if (userdata_key == SVN_UTF_NTOU_XLATE_HANDLE)
        node = atomic_swap(&xlat_ntou_static_handle, node);
      else if (userdata_key == SVN_UTF_UTON_XLATE_HANDLE)
        node = atomic_swap(&xlat_uton_static_handle, node);
      if (node == ((void*)0))
        return SVN_NO_ERROR;

      SVN_MUTEX__WITH_LOCK(xlate_handle_mutex,
                           put_xlate_handle_node_internal(node,
                                                          userdata_key));
    }
  else
    {

      apr_pool_userdata_set(node, userdata_key, apr_pool_cleanup_null, pool);
    }

  return SVN_NO_ERROR;
}
