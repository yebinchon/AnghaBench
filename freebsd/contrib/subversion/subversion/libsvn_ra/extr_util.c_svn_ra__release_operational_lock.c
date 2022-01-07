
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_session_t ;
struct TYPE_18__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_2__*) ;
 TYPE_2__* SVN_NO_ERROR ;
 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int _ (char*) ;
 scalar_t__ is_atomicity_error (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,TYPE_2__*,int ,int ) ;
 TYPE_2__* svn_ra_change_rev_prop2 (int *,int ,char const*,TYPE_1__ const**,int *,int *) ;
 TYPE_2__* svn_ra_has_capability (int *,scalar_t__*,int ,int *) ;
 TYPE_2__* svn_ra_rev_prop (int *,int ,char const*,TYPE_1__**,int *) ;
 scalar_t__ svn_string_compare (TYPE_1__*,TYPE_1__ const*) ;

svn_error_t *
svn_ra__release_operational_lock(svn_ra_session_t *session,
                                 const char *lock_revprop_name,
                                 const svn_string_t *mylocktoken,
                                 apr_pool_t *scratch_pool)
{
  svn_string_t *reposlocktoken;
  svn_boolean_t be_atomic;

  SVN_ERR(svn_ra_has_capability(session, &be_atomic,
                                SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                scratch_pool));
  SVN_ERR(svn_ra_rev_prop(session, 0, lock_revprop_name,
                          &reposlocktoken, scratch_pool));
  if (reposlocktoken && svn_string_compare(reposlocktoken, mylocktoken))
    {
      svn_error_t *err;

      err = svn_ra_change_rev_prop2(session, 0, lock_revprop_name,
                                    be_atomic ? &mylocktoken : ((void*)0), ((void*)0),
                                    scratch_pool);
      if (is_atomicity_error(err))
        {
          return svn_error_createf(err->apr_err, err,
                                   _("Lock was stolen by '%s'; unable to "
                                     "remove it"), reposlocktoken->data);
        }
      else
        SVN_ERR(err);
    }

  return SVN_NO_ERROR;
}
