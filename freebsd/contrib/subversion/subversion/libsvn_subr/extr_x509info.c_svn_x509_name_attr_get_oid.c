
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* oid; int oid_len; } ;
typedef TYPE_1__ svn_x509_name_attr_t ;
typedef int apr_size_t ;



const unsigned char *
svn_x509_name_attr_get_oid(const svn_x509_name_attr_t *attr, apr_size_t *len)
{
  *len = attr->oid_len;
  return attr->oid;
}
