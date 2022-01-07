
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_PROPERTY_NAME ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int error_if_wcprop_name (char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_prop_is_known_svn_rev_prop (char const*) ;
 int svn_prop_name_is_valid (char const*) ;

__attribute__((used)) static svn_error_t *
check_prop_name(const char *propname,
                const svn_string_t *propval)
{
  if (svn_prop_is_known_svn_rev_prop(propname))
    return svn_error_createf(SVN_ERR_CLIENT_PROPERTY_NAME, ((void*)0),
                             _("Revision property '%s' not allowed "
                               "in this context"), propname);

  SVN_ERR(error_if_wcprop_name(propname));

  if (propval && ! svn_prop_name_is_valid(propname))
    return svn_error_createf(SVN_ERR_CLIENT_PROPERTY_NAME, ((void*)0),
                             _("Bad property name: '%s'"), propname);

  return SVN_NO_ERROR;
}
