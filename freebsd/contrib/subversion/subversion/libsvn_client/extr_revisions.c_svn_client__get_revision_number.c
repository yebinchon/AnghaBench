
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_15__ {scalar_t__ number; int date; } ;
struct TYPE_16__ {int kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
struct TYPE_17__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_CLIENT_BAD_REVISION ;
 int SVN_ERR_CLIENT_RA_ACCESS_REQUIRED ;
 int SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED ;
 int SVN_ERR_ENTRY_NOT_FOUND ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 TYPE_3__* SVN_NO_ERROR ;
 int TRUE ;
 int * _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_create (int ,int *,int *) ;
 TYPE_3__* svn_error_createf (int ,int *,int *,int ) ;
 int svn_path_is_url (char const*) ;
 TYPE_3__* svn_ra_get_dated_revision (int *,scalar_t__*,int ,int *) ;
 TYPE_3__* svn_ra_get_latest_revnum (int *,scalar_t__*,int *) ;
 TYPE_3__* svn_wc__node_get_changed_info (scalar_t__*,int *,int *,int *,char const*,int *,int *) ;
 TYPE_3__* svn_wc__node_get_origin (int *,scalar_t__*,int *,int *,int *,int *,int *,int *,char const*,int ,int *,int *) ;

svn_error_t *
svn_client__get_revision_number(svn_revnum_t *revnum,
                                svn_revnum_t *youngest_rev,
                                svn_wc_context_t *wc_ctx,
                                const char *local_abspath,
                                svn_ra_session_t *ra_session,
                                const svn_opt_revision_t *revision,
                                apr_pool_t *scratch_pool)
{
  switch (revision->kind)
    {
    case 129:
      *revnum = SVN_INVALID_REVNUM;
      break;

    case 131:
      *revnum = revision->value.number;
      break;

    case 132:




      if (youngest_rev && SVN_IS_VALID_REVNUM(*youngest_rev))
        {
          *revnum = *youngest_rev;
        }
      else
        {
          if (! ra_session)
            return svn_error_create(SVN_ERR_CLIENT_RA_ACCESS_REQUIRED,
                                    ((void*)0), ((void*)0));
          SVN_ERR(svn_ra_get_latest_revnum(ra_session, revnum, scratch_pool));
          if (youngest_rev)
            *youngest_rev = *revnum;
        }
      break;

    case 128:
    case 135:
      {
        svn_error_t *err;


        if (local_abspath == ((void*)0))
          return svn_error_create(SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED,
                                  ((void*)0), ((void*)0));



        if (svn_path_is_url(local_abspath))
          return svn_error_create(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                                  _("PREV, BASE, or COMMITTED revision "
                                    "keywords are invalid for URL"));

        err = svn_wc__node_get_origin(((void*)0), revnum, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                      ((void*)0),
                                      wc_ctx, local_abspath, TRUE,
                                      scratch_pool, scratch_pool);



        if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
          {
            svn_error_clear(err);
            return svn_error_createf(SVN_ERR_ENTRY_NOT_FOUND, ((void*)0),
                                     _("'%s' is not under version control"),
                                     svn_dirent_local_style(local_abspath,
                                                            scratch_pool));
          }
        else
          SVN_ERR(err);

        if (! SVN_IS_VALID_REVNUM(*revnum))
          return svn_error_createf(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                                   _("Path '%s' has no committed "
                                     "revision"),
                                   svn_dirent_local_style(local_abspath,
                                                          scratch_pool));
      }
      break;

    case 134:
    case 130:
      {

        if (local_abspath == ((void*)0))
          return svn_error_create(SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED,
                                  ((void*)0), ((void*)0));



        if (svn_path_is_url(local_abspath))
          return svn_error_create(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                                  _("PREV, BASE, or COMMITTED revision "
                                    "keywords are invalid for URL"));

        SVN_ERR(svn_wc__node_get_changed_info(revnum, ((void*)0), ((void*)0),
                                              wc_ctx, local_abspath,
                                              scratch_pool, scratch_pool));
        if (! SVN_IS_VALID_REVNUM(*revnum))
          return svn_error_createf(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                                   _("Path '%s' has no committed "
                                     "revision"),
                                   svn_dirent_local_style(local_abspath,
                                                          scratch_pool));

        if (revision->kind == 130)
          (*revnum)--;
      }
      break;

    case 133:
      if (! ra_session)
        return svn_error_create(SVN_ERR_CLIENT_RA_ACCESS_REQUIRED, ((void*)0), ((void*)0));
      SVN_ERR(svn_ra_get_dated_revision(ra_session, revnum,
                                        revision->value.date, scratch_pool));
      break;

    default:
      return svn_error_createf(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0),
                               _("Unrecognized revision type requested for "
                                 "'%s'"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }





  if (youngest_rev
      && (revision->kind == 132
          || revision->kind == 133)
      && SVN_IS_VALID_REVNUM(*youngest_rev)
      && SVN_IS_VALID_REVNUM(*revnum)
      && (*revnum > *youngest_rev))
    *revnum = *youngest_rev;

  return SVN_NO_ERROR;
}
