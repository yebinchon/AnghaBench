
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int svn_prop_is_svn_prop (char const*) ;

svn_boolean_t
svn_prop_needs_translation(const char *propname)
{




  return svn_prop_is_svn_prop(propname);
}
