
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_9__ {char const* update_target; int switched_paths; int pool; int body_template; int sess; } ;
typedef TYPE_2__ report_context_t ;
struct TYPE_10__ {int path; } ;
typedef TYPE_3__ apr_uri_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int * APR_SUCCESS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 int apr_ltoa (int *,int ) ;
 char* apr_pstrcat (int *,char*,char const*,int ) ;
 char* apr_pstrdup (int ,char const*) ;
 scalar_t__ apr_uri_parse (int *,char const*,TYPE_3__*) ;
 int svn_depth_to_word (int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_hash_sets (int ,char const*,char const*) ;
 int svn_ra_serf__get_relative_path (char const**,int ,int ,int *) ;
 int svn_ra_serf__report_resource (char const**,int ,int *) ;
 int svn_stream_write (int ,int ,int *) ;
 int svn_xml_escape_cdata_cstring (TYPE_1__**,char const*,int *) ;
 int svn_xml_make_close_tag (TYPE_1__**,int *,char*) ;
 int svn_xml_make_open_tag (TYPE_1__**,int *,int ,char*,char*,int ,char*,char const*,char*,int ,char*,char const*,char*,char*,int ) ;
 int svn_xml_protect_pcdata ;

__attribute__((used)) static svn_error_t *
link_path(void *report_baton,
          const char *path,
          const char *url,
          svn_revnum_t revision,
          svn_depth_t depth,
          svn_boolean_t start_empty,
          const char *lock_token,
          apr_pool_t *pool)
{
  report_context_t *report = report_baton;
  const char *link, *report_target;
  apr_uri_t uri;
  apr_status_t status;
  svn_stringbuf_t *buf = ((void*)0);





  status = apr_uri_parse(pool, url, &uri);
  if (status)
    {
      return svn_error_createf(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                               _("Unable to parse URL '%s'"), url);
    }

  SVN_ERR(svn_ra_serf__report_resource(&report_target, report->sess, pool));
  SVN_ERR(svn_ra_serf__get_relative_path(&link, uri.path, report->sess, pool));

  link = apr_pstrcat(pool, "/", link, SVN_VA_NULL);

  svn_xml_make_open_tag(&buf, pool, svn_xml_protect_pcdata, "S:entry",
                        "rev", apr_ltoa(pool, revision),
                        "lock-token", lock_token,
                        "depth", svn_depth_to_word(depth),
                        "linkpath", link,
                        "start-empty", start_empty ? "true" : ((void*)0),
                        SVN_VA_NULL);
  svn_xml_escape_cdata_cstring(&buf, path, pool);
  svn_xml_make_close_tag(&buf, pool, "S:entry");

  SVN_ERR(svn_stream_write(report->body_template, buf->data, &buf->len));



  path = apr_pstrdup(report->pool, path);
  link = apr_pstrdup(report->pool, link + 1);
  svn_hash_sets(report->switched_paths, path, link);

  if (!path[0] && report->update_target[0])
    {


      svn_hash_sets(report->switched_paths, report->update_target, link);
    }

  return APR_SUCCESS;
}
