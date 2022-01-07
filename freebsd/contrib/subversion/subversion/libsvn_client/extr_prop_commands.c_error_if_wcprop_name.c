
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int SVN_ERR_CLIENT_PROPERTY_NAME ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_prop_wc_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;

__attribute__((used)) static svn_error_t *
error_if_wcprop_name(const char *name)
{
  if (svn_property_kind2(name) == svn_prop_wc_kind)
    {
      return svn_error_createf
        (SVN_ERR_CLIENT_PROPERTY_NAME, ((void*)0),
         _("'%s' is a wcprop, thus not accessible to clients"),
         name);
    }

  return SVN_NO_ERROR;
}
