
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int is_known_prop (char const*,int ) ;
 int known_rev_props ;

svn_boolean_t
svn_prop_is_known_svn_rev_prop(const char *prop_name)
{
  return is_known_prop(prop_name, known_rev_props);
}
