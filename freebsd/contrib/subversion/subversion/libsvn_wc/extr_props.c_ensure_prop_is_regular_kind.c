
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;


 int SVN_ERR_BAD_PROP_KIND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_prop_entry_kind ;
 int svn_prop_wc_kind ;
 int svn_property_kind2 (char const*) ;

__attribute__((used)) static svn_error_t *
ensure_prop_is_regular_kind(const char *name)
{
  enum svn_prop_kind prop_kind = svn_property_kind2(name);


  if (prop_kind == svn_prop_entry_kind)
    return svn_error_createf(SVN_ERR_BAD_PROP_KIND, ((void*)0),
                             _("Property '%s' is an entry property"), name);


  if (prop_kind == svn_prop_wc_kind)
    return svn_error_createf(SVN_ERR_BAD_PROP_KIND, ((void*)0),
                             _("Property '%s' is a WC property, not "
                               "a regular property"), name);

  return SVN_NO_ERROR;
}
