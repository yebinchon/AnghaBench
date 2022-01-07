
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;


 int svn_prop_entry_kind ;
 int svn_property_kind2 (char const*) ;

svn_boolean_t
svn_wc_is_entry_prop(const char *name)
{
  enum svn_prop_kind kind = svn_property_kind2(name);
  return (kind == svn_prop_entry_kind);
}
