
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hostnames; int digest; int valid_to; int valid_from; void* issuer; void* subject; } ;
typedef TYPE_1__ svn_x509_certinfo_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int deep_copy_array (int ,int *) ;
 void* deep_copy_name_attrs (void*,int *) ;
 int svn_checksum_dup (int ,int *) ;

svn_x509_certinfo_t *
svn_x509_certinfo_dup(const svn_x509_certinfo_t *certinfo,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_x509_certinfo_t *result = apr_palloc(result_pool, sizeof(*result));
  result->subject = deep_copy_name_attrs(certinfo->subject, result_pool);
  result->issuer = deep_copy_name_attrs(certinfo->issuer, result_pool);
  result->valid_from = certinfo->valid_from;
  result->valid_to = certinfo->valid_to;
  result->digest = svn_checksum_dup(certinfo->digest, result_pool);
  result->hostnames = deep_copy_array(certinfo->hostnames, result_pool);

  return result;
}
