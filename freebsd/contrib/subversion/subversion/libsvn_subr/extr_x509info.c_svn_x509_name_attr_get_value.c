
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* utf8_value; } ;
typedef TYPE_1__ svn_x509_name_attr_t ;



const char *
svn_x509_name_attr_get_value(const svn_x509_name_attr_t *attr)
{
  return attr->utf8_value;
}
