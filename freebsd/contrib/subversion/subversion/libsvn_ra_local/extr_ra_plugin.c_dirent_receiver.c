
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_dirent_t ;
struct TYPE_2__ {int receiver_baton; int * (* receiver ) (char const*,int *,int ,int *) ;} ;
typedef TYPE_1__ dirent_receiver_baton_t ;
typedef int apr_pool_t ;


 int * stub1 (char const*,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
dirent_receiver(const char *rel_path,
                svn_dirent_t *dirent,
                void *baton,
                apr_pool_t *pool)
{
  dirent_receiver_baton_t *b = baton;
  return b->receiver(rel_path, dirent, b->receiver_baton, pool);
}
