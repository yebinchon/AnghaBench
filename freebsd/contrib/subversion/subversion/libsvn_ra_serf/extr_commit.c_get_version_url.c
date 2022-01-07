
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char const* data; } ;
typedef TYPE_3__ svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_10__ {char* path; } ;
struct TYPE_12__ {TYPE_2__ session_url; int wc_callback_baton; TYPE_1__* wc_callbacks; } ;
typedef TYPE_4__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int (* get_wc_prop ) (int ,char const*,int ,TYPE_3__ const**,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_REQUEST_FAILED ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_RA_SERF__WC_CHECKED_IN_URL ;
 int _ (char*) ;
 int stub1 (int ,char const*,int ,TYPE_3__ const**,int *) ;
 int * svn_error_createf (int ,int *,int ,char*) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_serf__fetch_dav_prop (char const**,TYPE_4__*,char const*,int ,char*,int *,int *) ;
 int svn_ra_serf__get_stable_url (char const**,int *,TYPE_4__*,int *,int ,int *,int *) ;
 char* svn_urlpath__canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_version_url(const char **checked_in_url,
                svn_ra_serf__session_t *session,
                const char *relpath,
                svn_revnum_t base_revision,
                const char *parent_vsn_url,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  const char *root_checkout;

  if (session->wc_callbacks->get_wc_prop)
    {
      const svn_string_t *current_version;

      SVN_ERR(session->wc_callbacks->get_wc_prop(
                session->wc_callback_baton,
                relpath,
                SVN_RA_SERF__WC_CHECKED_IN_URL,
                &current_version, scratch_pool));

      if (current_version)
        {
          *checked_in_url =
            svn_urlpath__canonicalize(current_version->data, result_pool);
          return SVN_NO_ERROR;
        }
    }

  if (parent_vsn_url)
    {
      root_checkout = parent_vsn_url;
    }
  else
    {
      const char *propfind_url;

      if (SVN_IS_VALID_REVNUM(base_revision))
        {





          SVN_ERR(svn_ra_serf__get_stable_url(&propfind_url,
                                              ((void*)0) ,
                                              session,
                                              ((void*)0) , base_revision,
                                              scratch_pool, scratch_pool));
        }
      else
        {
          propfind_url = session->session_url.path;
        }

      SVN_ERR(svn_ra_serf__fetch_dav_prop(&root_checkout, session,
                                          propfind_url, base_revision,
                                          "checked-in",
                                          scratch_pool, scratch_pool));
      if (!root_checkout)
        return svn_error_createf(SVN_ERR_RA_DAV_REQUEST_FAILED, ((void*)0),
                                 _("Path '%s' not present"),
                                 session->session_url.path);

      root_checkout = svn_urlpath__canonicalize(root_checkout, scratch_pool);
    }

  *checked_in_url = svn_path_url_add_component2(root_checkout, relpath,
                                                result_pool);

  return SVN_NO_ERROR;
}
