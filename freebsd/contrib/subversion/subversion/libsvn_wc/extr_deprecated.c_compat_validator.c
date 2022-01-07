
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct compat_baton {int baton; int * (* validator ) (int ,char const*,char const*) ;} ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * stub1 (int ,char const*,char const*) ;

__attribute__((used)) static svn_error_t *
compat_validator(void *baton,
                 const char *uuid,
                 const char *url,
                 const char *root_url,
                 apr_pool_t *pool)
{
  struct compat_baton *cb = baton;

  if (uuid)
    return cb->validator(cb->baton, uuid, url);
  return SVN_NO_ERROR;
}
