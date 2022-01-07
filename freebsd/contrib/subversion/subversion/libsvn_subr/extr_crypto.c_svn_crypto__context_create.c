
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int * crypto; } ;
typedef TYPE_1__ svn_crypto__ctx_t ;
typedef int apu_err_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_crypto_t ;
typedef int apr_crypto_driver_t ;


 scalar_t__ APR_EGENERAL ;
 scalar_t__ APR_SUCCESS ;
 int CRYPTO_INIT (int *) ;
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 scalar_t__ apr_crypto_get_driver (int const**,char*,int *,int const**,int *) ;
 scalar_t__ apr_crypto_make (int **,int const*,int *,int *) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int * err_from_apu_err (scalar_t__,int const*) ;
 int * svn_error_create (scalar_t__,int *,char*) ;

svn_error_t *
svn_crypto__context_create(svn_crypto__ctx_t **ctx,
                           apr_pool_t *result_pool)
{
  return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                          "Cryptographic support is not available");

}
