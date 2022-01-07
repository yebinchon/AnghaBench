
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct recursive_proplist_receiver_baton {char const* anchor_abspath; char const* anchor; int wrapped_receiver_baton; int (* wrapped_receiver ) (int ,char const*,int *,int *,int *) ;int * iprops; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int strcmp (char const*,char const*) ;
 int stub1 (int ,char const*,int *,int *,int *) ;
 int stub2 (int ,char const*,int *,int *,int *) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
recursive_proplist_receiver(void *baton,
                            const char *local_abspath,
                            apr_hash_t *props,
                            apr_pool_t *scratch_pool)
{
  struct recursive_proplist_receiver_baton *b = baton;
  const char *path;
  apr_array_header_t *iprops = ((void*)0);

  if (b->iprops
      && ! strcmp(local_abspath, b->anchor_abspath))
    {

      iprops = b->iprops;
      b->iprops = ((void*)0);
    }
  else if (b->iprops)
    {



      SVN_ERR(b->wrapped_receiver(b->wrapped_receiver_baton,
                                  b->anchor ? b->anchor : b->anchor_abspath,
                                  ((void*)0) ,
                                  b->iprops,
                                  scratch_pool));
      b->iprops = ((void*)0);
    }



  if (b->anchor && b->anchor_abspath)
    {
      path = svn_dirent_join(b->anchor,
                             svn_dirent_skip_ancestor(b->anchor_abspath,
                                                      local_abspath),
                             scratch_pool);
    }
  else
    path = local_abspath;

  return svn_error_trace(b->wrapped_receiver(b->wrapped_receiver_baton,
                                             path, props, iprops,
                                             scratch_pool));
}
