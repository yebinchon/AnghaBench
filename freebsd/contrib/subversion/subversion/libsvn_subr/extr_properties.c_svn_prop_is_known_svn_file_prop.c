
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int is_known_prop (char const*,int ) ;
 int known_file_props ;

svn_boolean_t
svn_prop_is_known_svn_file_prop(const char *prop_name)
{
  return is_known_prop(prop_name, known_file_props);
}
