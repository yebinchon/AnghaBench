
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_client_commit_item3_t ;
struct TYPE_3__ {int by_path; } ;
typedef TYPE_1__ svn_client__committables_t ;
typedef int apr_pool_t ;


 scalar_t__ svn_hash_gets (int ,char const*) ;

__attribute__((used)) static svn_client_commit_item3_t *
look_up_committable(svn_client__committables_t *committables,
                    const char *path,
                    apr_pool_t *pool)
{
  return (svn_client_commit_item3_t *)
      svn_hash_gets(committables->by_path, path);
}
