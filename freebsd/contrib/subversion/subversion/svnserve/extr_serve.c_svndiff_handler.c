
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int pool; int conn; } ;
typedef TYPE_2__ file_revs_baton_t ;
typedef int apr_size_t ;


 int * svn_ra_svn__write_string (int ,int ,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *svndiff_handler(void *baton, const char *data,
                                    apr_size_t *len)
{
  file_revs_baton_t *b = baton;
  svn_string_t str;

  str.data = data;
  str.len = *len;
  return svn_ra_svn__write_string(b->conn, b->pool, &str);
}
