
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int body_template; } ;
typedef TYPE_2__ report_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int make_simple_xml_tag (TYPE_1__**,char*,char const*,int *) ;
 int svn_stream_write (int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
delete_path(void *report_baton,
            const char *path,
            apr_pool_t *pool)
{
  report_context_t *report = report_baton;
  svn_stringbuf_t *buf = ((void*)0);

  make_simple_xml_tag(&buf, "S:missing", path, pool);

  SVN_ERR(svn_stream_write(report->body_template, buf->data, &buf->len));

  return SVN_NO_ERROR;
}
