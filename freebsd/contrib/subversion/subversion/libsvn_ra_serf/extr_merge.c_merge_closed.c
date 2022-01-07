
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char const* data; int len; } ;
typedef TYPE_3__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_serf__xml_estate_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_7__* session; int merge_url; int pool; TYPE_1__* commit_info; } ;
typedef TYPE_4__ merge_context_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;
struct TYPE_12__ {int wc_callback_baton; TYPE_2__* wc_callbacks; } ;
struct TYPE_9__ {int (* push_wc_prop ) (int ,char const*,int ,TYPE_3__*,int *) ;} ;
struct TYPE_8__ {void* post_commit_err; void* author; void* date; scalar_t__ revision; } ;


 int AUTHOR ;
 int BASELINE ;
 int CHECKED_IN ;
 int COLLECTION ;
 int DATE ;
 int HREF ;
 int POST_COMMIT_ERR ;
 int RESPONSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_ERR_RA_DAV_REQUEST_FAILED ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_7__*) ;
 int SVN_RA_SERF__WC_CHECKED_IN_URL ;
 int VERSION_NAME ;
 int _ (char*) ;
 void* apr_pstrdup (int ,char*) ;
 int strlen (char const*) ;
 int stub1 (int ,char const*,int ,TYPE_3__*,int *) ;
 int svn_cstring_atoi64 (scalar_t__*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 char* svn_hash_gets (int *,char*) ;
 int svn_ra_serf__xml_note (int *,int,char const*,char const*) ;
 char* svn_urlpath__canonicalize (char const*,int *) ;
 char* svn_urlpath__skip_ancestor (int ,char*) ;

__attribute__((used)) static svn_error_t *
merge_closed(svn_ra_serf__xml_estate_t *xes,
             void *baton,
             int leaving_state,
             const svn_string_t *cdata,
             apr_hash_t *attrs,
             apr_pool_t *scratch_pool)
{
  merge_context_t *merge_ctx = baton;

  if (leaving_state == RESPONSE)
    {
      const char *rtype;

      rtype = svn_hash_gets(attrs, "resourcetype");



      if (rtype && *rtype == 'b')
        {
          const char *rev_str;

          rev_str = svn_hash_gets(attrs, "revision");
          if (rev_str)
            {
              apr_int64_t rev;

              SVN_ERR(svn_cstring_atoi64(&rev, rev_str));
              merge_ctx->commit_info->revision = (svn_revnum_t)rev;
            }
          else
            merge_ctx->commit_info->revision = SVN_INVALID_REVNUM;

          merge_ctx->commit_info->date =
              apr_pstrdup(merge_ctx->pool,
                          svn_hash_gets(attrs, "date"));

          merge_ctx->commit_info->author =
              apr_pstrdup(merge_ctx->pool,
                          svn_hash_gets(attrs, "author"));

          merge_ctx->commit_info->post_commit_err =
             apr_pstrdup(merge_ctx->pool,
                         svn_hash_gets(attrs, "post-commit-err"));
        }
      else
        {
          const char *href;

          href = svn_urlpath__skip_ancestor(
                   merge_ctx->merge_url,
                   svn_hash_gets(attrs, "href"));

          if (href == ((void*)0))
            return svn_error_createf(SVN_ERR_RA_DAV_REQUEST_FAILED, ((void*)0),
                                     _("A MERGE response for '%s' is not "
                                       "a child of the destination ('%s')"),
                                     href, merge_ctx->merge_url);



          if (!SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(merge_ctx->session)
              && merge_ctx->session->wc_callbacks->push_wc_prop)
            {
              const char *checked_in;
              svn_string_t checked_in_str;

              checked_in = svn_hash_gets(attrs, "checked-in");
              checked_in_str.data = checked_in;
              checked_in_str.len = strlen(checked_in);

              SVN_ERR(merge_ctx->session->wc_callbacks->push_wc_prop(
                        merge_ctx->session->wc_callback_baton,
                        href,
                        SVN_RA_SERF__WC_CHECKED_IN_URL,
                        &checked_in_str,
                        scratch_pool));
            }
        }
    }
  else if (leaving_state == BASELINE)
    {
      svn_ra_serf__xml_note(xes, RESPONSE, "resourcetype", "baseline");
    }
  else if (leaving_state == COLLECTION)
    {
      svn_ra_serf__xml_note(xes, RESPONSE, "resourcetype", "collection");
    }
  else
    {
      const char *name;
      const char *value = cdata->data;

      if (leaving_state == HREF)
        {
          name = "href";
          value = svn_urlpath__canonicalize(value, scratch_pool);
        }
      else if (leaving_state == CHECKED_IN)
        {
          name = "checked-in";
          value = svn_urlpath__canonicalize(value, scratch_pool);
        }
      else if (leaving_state == VERSION_NAME)
        name = "revision";
      else if (leaving_state == DATE)
        name = "date";
      else if (leaving_state == AUTHOR)
        name = "author";
      else if (leaving_state == POST_COMMIT_ERR)
        name = "post-commit-err";
      else
        SVN_ERR_MALFUNCTION();

      svn_ra_serf__xml_note(xes, RESPONSE, name, value);
    }

  return SVN_NO_ERROR;
}
