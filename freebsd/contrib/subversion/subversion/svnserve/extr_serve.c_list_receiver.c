
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_dirent_t ;
struct TYPE_2__ {int dirent_fields; int conn; } ;
typedef TYPE_1__ list_receiver_baton_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_ra_svn__write_dirent (int ,int *,char const*,int *,int ) ;

__attribute__((used)) static svn_error_t *
list_receiver(const char *path,
              svn_dirent_t *dirent,
              void *baton,
              apr_pool_t *pool)
{
  list_receiver_baton_t *b = baton;
  return svn_error_trace(svn_ra_svn__write_dirent(b->conn, pool, path, dirent,
                                                  b->dirent_fields));
}
