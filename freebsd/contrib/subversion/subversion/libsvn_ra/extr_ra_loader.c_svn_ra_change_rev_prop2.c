
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_7__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int * (* change_rev_prop ) (TYPE_2__*,int ,char const*,int const* const*,int const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int SVN_RA_CAPABILITY_ATOMIC_REVPROPS ;
 int _ (char*) ;
 int * stub1 (TYPE_2__*,int ,char const*,int const* const*,int const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_ra_has_capability (TYPE_2__*,int *,int ,int *) ;

svn_error_t *svn_ra_change_rev_prop2(svn_ra_session_t *session,
                                     svn_revnum_t rev,
                                     const char *name,
                                     const svn_string_t *const *old_value_p,
                                     const svn_string_t *value,
                                     apr_pool_t *pool)
{
  SVN_ERR_ASSERT(SVN_IS_VALID_REVNUM(rev));



  if (old_value_p)
    {
      svn_boolean_t has_atomic_revprops;

      SVN_ERR(svn_ra_has_capability(session, &has_atomic_revprops,
                                    SVN_RA_CAPABILITY_ATOMIC_REVPROPS,
                                    pool));

      if (!has_atomic_revprops)


        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                 _("Specifying 'old_value_p' is not allowed when "
                                   "the '%s' capability is not advertised, and "
                                   "could indicate a bug in your client"),
                                   SVN_RA_CAPABILITY_ATOMIC_REVPROPS);
    }

  return session->vtable->change_rev_prop(session, rev, name,
                                          old_value_p, value, pool);
}
