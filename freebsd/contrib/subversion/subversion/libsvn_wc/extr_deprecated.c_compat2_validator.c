
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct compat2_baton {int baton; int * (* validator ) (int ,char const*,char const*,int ,int *) ;} ;
typedef int apr_pool_t ;


 int * stub1 (int ,char const*,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
compat2_validator(void *baton,
                  const char *uuid,
                  const char *url,
                  const char *root_url,
                  apr_pool_t *pool)
{
  struct compat2_baton *cb = baton;

  return cb->validator(cb->baton, uuid,
                       (root_url ? root_url : url), (root_url != ((void*)0)),
                       pool);
}
