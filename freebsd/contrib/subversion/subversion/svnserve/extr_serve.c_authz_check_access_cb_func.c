
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * svn_repos_authz_func_t ;
struct TYPE_5__ {TYPE_1__* repository; } ;
typedef TYPE_2__ server_baton_t ;
struct TYPE_4__ {scalar_t__ authzdb; } ;


 int * authz_check_access_cb ;

__attribute__((used)) static svn_repos_authz_func_t authz_check_access_cb_func(server_baton_t *baton)
{
  if (baton->repository->authzdb)
     return authz_check_access_cb;
  return ((void*)0);
}
