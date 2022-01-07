
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_OUT_OF_DATE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 int svn_ra_change_rev_prop2 (int *,int ,char const*,int *,TYPE_1__ const*,int *) ;
 int svn_ra_rev_prop (int *,int ,char const*,TYPE_1__**,int *) ;
 int svn_string_compare (TYPE_1__ const*,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
check_and_set_revprop(svn_revnum_t *set_rev,
                      svn_ra_session_t *ra_session,
                      const char *propname,
                      const svn_string_t *original_propval,
                      const svn_string_t *propval,
                      apr_pool_t *pool)
{
  if (original_propval)
    {

      svn_string_t *current;
      SVN_ERR(svn_ra_rev_prop(ra_session, *set_rev, propname, &current, pool));

      if (original_propval->data && (! current))
        {
          return svn_error_createf(
                  SVN_ERR_RA_OUT_OF_DATE, ((void*)0),
                  _("revprop '%s' in r%ld is unexpectedly absent "
                    "in repository (maybe someone else deleted it?)"),
                  propname, *set_rev);
        }
      else if (original_propval->data
               && (! svn_string_compare(original_propval, current)))
        {
          return svn_error_createf(
                  SVN_ERR_RA_OUT_OF_DATE, ((void*)0),
                  _("revprop '%s' in r%ld has unexpected value "
                    "in repository (maybe someone else changed it?)"),
                  propname, *set_rev);
        }
      else if ((! original_propval->data) && current)
        {
          return svn_error_createf(
                  SVN_ERR_RA_OUT_OF_DATE, ((void*)0),
                  _("revprop '%s' in r%ld is unexpectedly present "
                    "in repository (maybe someone else set it?)"),
                  propname, *set_rev);
        }
    }

  SVN_ERR(svn_ra_change_rev_prop2(ra_session, *set_rev, propname,
                                  ((void*)0), propval, pool));

  return SVN_NO_ERROR;
}
