
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valid_from; } ;
typedef TYPE_1__ svn_x509_certinfo_t ;
typedef int apr_time_t ;



apr_time_t
svn_x509_certinfo_get_valid_from(const svn_x509_certinfo_t *certinfo)
{
  return certinfo->valid_from;
}
