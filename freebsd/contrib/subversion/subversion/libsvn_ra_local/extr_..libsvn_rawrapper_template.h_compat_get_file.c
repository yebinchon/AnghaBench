
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {int * (* get_file ) (void*,char const*,int ,int *,int *,int **,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,char const*,int ,int *,int *,int **,int *) ;

__attribute__((used)) static svn_error_t *compat_get_file(void *session_baton,
                                    const char *path,
                                    svn_revnum_t revision,
                                    svn_stream_t *stream,
                                    svn_revnum_t *fetched_rev,
                                    apr_hash_t **props,
                                    apr_pool_t *pool)
{
  return VTBL.get_file(session_baton, path, revision, stream, fetched_rev,
                       props, pool);
}
