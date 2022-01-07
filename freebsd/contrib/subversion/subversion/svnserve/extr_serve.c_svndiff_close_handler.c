
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int pool; int conn; } ;
typedef TYPE_1__ file_revs_baton_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_ra_svn__write_cstring (int ,int ,char*) ;

__attribute__((used)) static svn_error_t *svndiff_close_handler(void *baton)
{
  file_revs_baton_t *b = baton;

  SVN_ERR(svn_ra_svn__write_cstring(b->conn, b->pool, ""));
  return SVN_NO_ERROR;
}
