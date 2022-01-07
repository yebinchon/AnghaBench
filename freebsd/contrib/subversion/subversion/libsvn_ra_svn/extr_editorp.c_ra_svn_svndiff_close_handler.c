
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int token; int pool; int conn; int eb; } ;
typedef TYPE_1__ ra_svn_baton_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int check_for_error (int ,int ) ;
 int svn_ra_svn__write_cmd_textdelta_end (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *ra_svn_svndiff_close_handler(void *baton)
{
  ra_svn_baton_t *b = baton;

  SVN_ERR(check_for_error(b->eb, b->pool));
  SVN_ERR(svn_ra_svn__write_cmd_textdelta_end(b->conn, b->pool, b->token));
  return SVN_NO_ERROR;
}
