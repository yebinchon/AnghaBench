
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int token; int pool; int conn; int eb; } ;
typedef TYPE_2__ ra_svn_baton_t ;
typedef int apr_size_t ;


 int SVN_ERR (int ) ;
 int check_for_error (int ,int ) ;
 int * svn_ra_svn__write_cmd_textdelta_chunk (int ,int ,int ,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *ra_svn_svndiff_handler(void *baton, const char *data,
                                           apr_size_t *len)
{
  ra_svn_baton_t *b = baton;
  svn_string_t str;

  SVN_ERR(check_for_error(b->eb, b->pool));
  str.data = data;
  str.len = *len;
  return svn_ra_svn__write_cmd_textdelta_chunk(b->conn, b->pool,
                                               b->token, &str);
}
