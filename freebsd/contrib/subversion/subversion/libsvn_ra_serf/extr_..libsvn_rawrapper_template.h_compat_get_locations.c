
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_2__ {int * (* get_locations ) (void*,int **,char const*,int ,int *,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,int **,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *compat_get_locations(void *session_baton,
                                         apr_hash_t **locations,
                                         const char *path,
                                         svn_revnum_t peg_revision,
                                         apr_array_header_t *location_revs,
                                         apr_pool_t *pool)
{
  return VTBL.get_locations(session_baton, locations, path, peg_revision,
                            location_revs, pool);
}
