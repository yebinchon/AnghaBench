
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_config_t ;
typedef int svn_boolean_t ;
struct TYPE_3__ {void* anon_access; void* auth_access; } ;
typedef TYPE_1__ repository_t ;


 int SVN_CONFIG_OPTION_ANON_ACCESS ;
 int SVN_CONFIG_OPTION_AUTH_ACCESS ;
 void* get_access (int *,int ,char*,int ) ;

__attribute__((used)) static void
set_access(repository_t *repository,
           svn_config_t *cfg,
           svn_boolean_t read_only)
{
  repository->auth_access = get_access(cfg, SVN_CONFIG_OPTION_AUTH_ACCESS,
                                       "write", read_only);
  repository->anon_access = get_access(cfg, SVN_CONFIG_OPTION_ANON_ACCESS,
                                       "read", read_only);
}
