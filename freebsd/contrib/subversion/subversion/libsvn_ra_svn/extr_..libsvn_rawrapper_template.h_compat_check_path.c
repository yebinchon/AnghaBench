
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* check_path ) (void*,char const*,int ,int *,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *compat_check_path(void *session_baton,
                                      const char *path,
                                      svn_revnum_t revision,
                                      svn_node_kind_t *kind,
                                      apr_pool_t *pool)
{
  return VTBL.check_path(session_baton, path, revision, kind, pool);
}
