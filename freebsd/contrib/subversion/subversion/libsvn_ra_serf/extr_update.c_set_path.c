
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_7__ {int body_template; } ;
typedef TYPE_2__ report_context_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int apr_ltoa (int *,int ) ;
 int svn_depth_to_word (int ) ;
 int svn_stream_write (int ,int ,int *) ;
 int svn_xml_escape_cdata_cstring (TYPE_1__**,char const*,int *) ;
 int svn_xml_make_close_tag (TYPE_1__**,int *,char*) ;
 int svn_xml_make_open_tag (TYPE_1__**,int *,int ,char*,char*,int ,char*,char const*,char*,int ,char*,char*,int ) ;
 int svn_xml_protect_pcdata ;

__attribute__((used)) static svn_error_t *
set_path(void *report_baton,
         const char *path,
         svn_revnum_t revision,
         svn_depth_t depth,
         svn_boolean_t start_empty,
         const char *lock_token,
         apr_pool_t *pool)
{
  report_context_t *report = report_baton;
  svn_stringbuf_t *buf = ((void*)0);

  svn_xml_make_open_tag(&buf, pool, svn_xml_protect_pcdata, "S:entry",
                        "rev", apr_ltoa(pool, revision),
                        "lock-token", lock_token,
                        "depth", svn_depth_to_word(depth),
                        "start-empty", start_empty ? "true" : ((void*)0),
                        SVN_VA_NULL);
  svn_xml_escape_cdata_cstring(&buf, path, pool);
  svn_xml_make_close_tag(&buf, pool, "S:entry");

  SVN_ERR(svn_stream_write(report->body_template, buf->data, &buf->len));

  return SVN_NO_ERROR;
}
