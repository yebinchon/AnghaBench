
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subject; } ;
typedef TYPE_1__ svn_x509_certinfo_t ;
typedef int apr_pool_t ;


 char const* get_dn (int ,int *) ;

const char *
svn_x509_certinfo_get_subject(const svn_x509_certinfo_t *certinfo,
                              apr_pool_t *result_pool)
{
  return get_dn(certinfo->subject, result_pool);
}
