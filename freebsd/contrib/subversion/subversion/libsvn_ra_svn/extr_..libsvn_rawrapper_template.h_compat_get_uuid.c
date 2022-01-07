
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* get_uuid ) (void*,char const**,int *) ;} ;


 TYPE_1__ VTBL ;
 int * stub1 (void*,char const**,int *) ;

__attribute__((used)) static svn_error_t *compat_get_uuid(void *session_baton,
                                    const char **uuid,
                                    apr_pool_t *pool)
{
  return VTBL.get_uuid(session_baton, uuid, pool);
}
