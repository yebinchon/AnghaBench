
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char const* prop_name; int revision; } ;
typedef TYPE_1__ svn_wc_notify_t ;
struct TYPE_15__ {int * data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
struct TYPE_16__ {int notify_baton2; int (* notify_func2 ) (int ,TYPE_1__*,int *) ;int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_PROPERTY_NAME ;
 int SVN_ERR_CLIENT_REVISION_AUTHOR_CONTAINS_NEWLINE ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int _ (char*) ;
 int check_and_set_revprop (int *,int *,char const*,TYPE_2__ const*,TYPE_2__ const*,int *) ;
 int * strchr (int *,char) ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 int svn_client__get_revision_number (int *,int *,int ,int *,int *,int const*,int *) ;
 int svn_client_open_ra_session2 (int **,char const*,int *,TYPE_3__*,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_prop_name_is_valid (char const*) ;
 int svn_ra_change_rev_prop2 (int *,int ,char const*,TYPE_2__ const* const*,TYPE_2__ const*,int *) ;
 int svn_ra_has_capability (int *,scalar_t__*,int ,int *) ;
 TYPE_1__* svn_wc_create_notify_url (char const*,int ,int *) ;
 int svn_wc_notify_revprop_deleted ;
 int svn_wc_notify_revprop_set ;

svn_error_t *
svn_client_revprop_set2(const char *propname,
                        const svn_string_t *propval,
                        const svn_string_t *original_propval,
                        const char *URL,
                        const svn_opt_revision_t *revision,
                        svn_revnum_t *set_rev,
                        svn_boolean_t force,
                        svn_client_ctx_t *ctx,
                        apr_pool_t *pool)
{
  svn_ra_session_t *ra_session;
  svn_boolean_t be_atomic;

  if ((strcmp(propname, SVN_PROP_REVISION_AUTHOR) == 0)
      && propval
      && strchr(propval->data, '\n') != ((void*)0)
      && (! force))
    return svn_error_create(SVN_ERR_CLIENT_REVISION_AUTHOR_CONTAINS_NEWLINE,
                            ((void*)0), _("Author name should not contain a newline;"
                                    " value will not be set unless forced"));

  if (propval && ! svn_prop_name_is_valid(propname))
    return svn_error_createf(SVN_ERR_CLIENT_PROPERTY_NAME, ((void*)0),
                             _("Bad property name: '%s'"), propname);


  SVN_ERR(svn_client_open_ra_session2(&ra_session, URL, ((void*)0),
                                      ctx, pool, pool));



  SVN_ERR(svn_client__get_revision_number(set_rev, ((void*)0), ctx->wc_ctx, ((void*)0),
                                          ra_session, revision, pool));

  SVN_ERR(svn_ra_has_capability(ra_session, &be_atomic,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS, pool));
  if (be_atomic)
    {

      const svn_string_t *const *old_value_p;
      const svn_string_t *unset = ((void*)0);

      if (original_propval == ((void*)0))
        old_value_p = ((void*)0);
      else if (original_propval->data == ((void*)0))
        old_value_p = &unset;
      else
        old_value_p = &original_propval;


      SVN_ERR(svn_ra_change_rev_prop2(ra_session, *set_rev, propname,
                                      old_value_p, propval, pool));
    }
  else
    {

      SVN_ERR(check_and_set_revprop(set_rev, ra_session, propname,
                                    original_propval, propval, pool));
    }

  if (ctx->notify_func2)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify_url(URL,
                                             propval == ((void*)0)
                                               ? svn_wc_notify_revprop_deleted
                                               : svn_wc_notify_revprop_set,
                                             pool);
      notify->prop_name = propname;
      notify->revision = *set_rev;

      ctx->notify_func2(ctx->notify_baton2, notify, pool);
    }

  return SVN_NO_ERROR;
}
