
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_prop_kind_t ;


 int SIZEOF_ENTRY_PREFIX ;
 int SIZEOF_WC_PREFIX ;
 int SVN_PROP_ENTRY_PREFIX ;
 int SVN_PROP_WC_PREFIX ;
 scalar_t__ strncmp (char const*,int ,int ) ;
 int svn_prop_entry_kind ;
 int svn_prop_regular_kind ;
 int svn_prop_wc_kind ;

svn_prop_kind_t
svn_property_kind2(const char *prop_name)
{

  if (strncmp(prop_name, SVN_PROP_WC_PREFIX, SIZEOF_WC_PREFIX) == 0)
    return svn_prop_wc_kind;

  if (strncmp(prop_name, SVN_PROP_ENTRY_PREFIX, SIZEOF_ENTRY_PREFIX) == 0)
    return svn_prop_entry_kind;

  return svn_prop_regular_kind;
}
