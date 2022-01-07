
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct TYPE_12__ {int crypto; } ;
typedef TYPE_2__ svn_crypto__ctx_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_crypto_key_t ;
typedef int apr_crypto_block_t ;


 int APR_EGENERAL ;
 int APR_KEY_AES_256 ;
 int APR_MODE_CBC ;
 scalar_t__ APR_SUCCESS ;
 int FALSE ;
 int NUM_ITERATIONS ;
 int RANDOM_PREFIX_LEN ;
 int SALT_LEN ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 int apr_crypto_block_cleanup (int *) ;
 scalar_t__ apr_crypto_block_encrypt (unsigned char**,int*,unsigned char*,int,int *) ;
 scalar_t__ apr_crypto_block_encrypt_finish (int *,int*,int *) ;
 scalar_t__ apr_crypto_block_encrypt_init (int **,unsigned char const**,int *,int*,int *) ;
 scalar_t__ apr_crypto_passphrase (int **,int*,int ,int ,unsigned char const*,int,int ,int ,int ,int ,int ,int *) ;
 unsigned char* apr_palloc (int *,int) ;
 int * crypto_error_create (TYPE_2__*,scalar_t__,char*) ;
 int get_random_bytes (unsigned char const**,TYPE_2__*,int,int *) ;
 int memcpy (unsigned char*,...) ;
 int strlen (char const*) ;
 int * svn_error_create (int ,int *,char*) ;
 int * svn_error_trace (int *) ;
 TYPE_1__* wrap_as_string (unsigned char const*,int,int *) ;

svn_error_t *
svn_crypto__encrypt_password(const svn_string_t **ciphertext,
                             const svn_string_t **iv,
                             const svn_string_t **salt,
                             svn_crypto__ctx_t *ctx,
                             const char *password,
                             const svn_string_t *master,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  return svn_error_create(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                          "Cryptographic support is not available");

}
