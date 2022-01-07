
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ valid; } ;
typedef TYPE_1__ xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 char const* SVN_UTF_NTOU_XLATE_HANDLE ;
 char const* SVN_UTF_UTON_XLATE_HANDLE ;
 int apr_pool_userdata_get (void**,char const*,int *) ;
 TYPE_1__* atomic_swap (int *,int *) ;
 int get_xlate_handle_node_internal (TYPE_1__**,char const*,char const*,char const*,int *) ;
 int xlat_ntou_static_handle ;
 int xlat_uton_static_handle ;
 int * xlate_alloc_handle (TYPE_1__**,char const*,char const*,int *) ;
 scalar_t__ xlate_handle_hash ;
 int xlate_handle_mutex ;

__attribute__((used)) static svn_error_t *
get_xlate_handle_node(xlate_handle_node_t **ret,
                      const char *topage, const char *frompage,
                      const char *userdata_key, apr_pool_t *pool)
{
  xlate_handle_node_t *old_node = ((void*)0);


  if (userdata_key)
    {
      if (xlate_handle_hash)
        {

          if (userdata_key == SVN_UTF_NTOU_XLATE_HANDLE)
            old_node = atomic_swap(&xlat_ntou_static_handle, ((void*)0));
          else if (userdata_key == SVN_UTF_UTON_XLATE_HANDLE)
            old_node = atomic_swap(&xlat_uton_static_handle, ((void*)0));

          if (old_node && old_node->valid)
            {
              *ret = old_node;
              return SVN_NO_ERROR;
            }
        }
      else
        {
          void *p;

          apr_pool_userdata_get(&p, userdata_key, pool);
          old_node = p;

          if (old_node && old_node->valid)
            {
              *ret = old_node;
              return SVN_NO_ERROR;
            }

          return xlate_alloc_handle(ret, topage, frompage, pool);
        }
    }

  SVN_MUTEX__WITH_LOCK(xlate_handle_mutex,
                       get_xlate_handle_node_internal(ret,
                                                      topage,
                                                      frompage,
                                                      userdata_key,
                                                      pool));

  return SVN_NO_ERROR;
}
