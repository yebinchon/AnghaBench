
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* hostnames; } ;
typedef TYPE_1__ svn_x509_certinfo_t ;
typedef int apr_array_header_t ;



const apr_array_header_t *
svn_x509_certinfo_get_hostnames(const svn_x509_certinfo_t *certinfo)
{
  return certinfo->hostnames;
}
