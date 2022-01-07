
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct reporter_3in2_baton {int reporter3_baton; TYPE_1__* reporter3; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int * (* link_path ) (int ,char const*,char const*,int ,int ,int ,char const*,int *) ;} ;


 int * stub1 (int ,char const*,char const*,int ,int ,int ,char const*,int *) ;
 int svn_depth_infinity ;

__attribute__((used)) static svn_error_t *
link_path(void *report_baton,
          const char *path,
          const char *url,
          svn_revnum_t revision,
          svn_boolean_t start_empty,
          const char *lock_token,
          apr_pool_t *pool)
{
  struct reporter_3in2_baton *b = report_baton;
  return b->reporter3->link_path(b->reporter3_baton,
                                 path, url, revision, svn_depth_infinity,
                                 start_empty, lock_token, pool);

}
