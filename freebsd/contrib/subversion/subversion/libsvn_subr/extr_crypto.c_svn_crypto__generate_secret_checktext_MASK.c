#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/  crypto; } ;
typedef  TYPE_2__ svn_crypto__ctx_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ apr_status_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_crypto_key_t ;
typedef  int /*<<< orphan*/  apr_crypto_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EGENERAL ; 
 int /*<<< orphan*/  APR_KEY_AES_256 ; 
 int /*<<< orphan*/  APR_MODE_CBC ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MIN_STUFF_LEN ; 
 int /*<<< orphan*/  NUM_ITERATIONS ; 
 scalar_t__ SALT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned char**,scalar_t__*,unsigned char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,unsigned char const**,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char const**,TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (unsigned char const*,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC16(const svn_string_t **ciphertext,
                                      const svn_string_t **iv,
                                      const svn_string_t **salt,
                                      const char **checktext,
                                      svn_crypto__ctx_t *ctx,
                                      const svn_string_t *master,
                                      apr_pool_t *result_pool,
                                      apr_pool_t *scratch_pool)
{
#ifdef SVN_HAVE_CRYPTO
  svn_error_t *err = SVN_NO_ERROR;
  const unsigned char *salt_vector;
  const unsigned char *iv_vector;
  const unsigned char *stuff_vector;
  apr_size_t iv_len;
  apr_crypto_key_t *key = NULL;
  apr_status_t apr_err;
  apr_crypto_block_t *block_ctx = NULL;
  apr_size_t block_size;
  apr_size_t result_len;
  unsigned char *result;
  apr_size_t ignored_result_len = 0;
  apr_size_t stuff_len;
  svn_checksum_t *stuff_sum;

  SVN_ERR_ASSERT(ctx != NULL);

  /* Generate the salt. */
  SVN_ERR(get_random_bytes(&salt_vector, ctx, SALT_LEN, result_pool));

  /* Initialize the passphrase.  */
  apr_err = apr_crypto_passphrase(&key, &iv_len,
                                  master->data, master->len,
                                  salt_vector, SALT_LEN,
                                  APR_KEY_AES_256, APR_MODE_CBC,
                                  FALSE /* doPad */, NUM_ITERATIONS,
                                  ctx->crypto,
                                  scratch_pool);
  if (apr_err != APR_SUCCESS)
    return svn_error_trace(crypto_error_create(
                               ctx, apr_err,
                               _("Error creating derived key")));
  if (! key)
    return svn_error_create(APR_EGENERAL, NULL,
                            _("Error creating derived key"));
  if (iv_len == 0)
    return svn_error_create(APR_EGENERAL, NULL,
                            _("Unexpected IV length returned"));

  /* Generate the proper length IV.  */
  SVN_ERR(get_random_bytes(&iv_vector, ctx, iv_len, result_pool));

  /* Initialize block encryption. */
  apr_err = apr_crypto_block_encrypt_init(&block_ctx, &iv_vector, key,
                                          &block_size, scratch_pool);
  if ((apr_err != APR_SUCCESS) || (! block_ctx))
    return svn_error_trace(crypto_error_create(
                             ctx, apr_err,
                             _("Error initializing block encryption")));

  /* Generate a blob of random data, block-aligned per the
     requirements of the encryption algorithm, but with a minimum size
     of our choosing.  */
#define MIN_STUFF_LEN 32
  if (MIN_STUFF_LEN % block_size)
    stuff_len = MIN_STUFF_LEN + (block_size - (MIN_STUFF_LEN % block_size));
  else
    stuff_len = MIN_STUFF_LEN;
  SVN_ERR(get_random_bytes(&stuff_vector, ctx, stuff_len, scratch_pool));

  /* ### FIXME:  This should be a SHA-256.  */
  SVN_ERR(svn_checksum(&stuff_sum, svn_checksum_sha1, stuff_vector,
                       stuff_len, scratch_pool));

  /* Get the length that we need to allocate.  */
  apr_err = apr_crypto_block_encrypt(NULL, &result_len, stuff_vector,
                                     stuff_len, block_ctx);
  if (apr_err != APR_SUCCESS)
    {
      err = crypto_error_create(ctx, apr_err,
                                _("Error fetching result length"));
      goto cleanup;
    }

  /* Allocate our result buffer.  */
  result = apr_palloc(result_pool, result_len);

  /* Encrypt the block. */
  apr_err = apr_crypto_block_encrypt(&result, &result_len, stuff_vector,
                                     stuff_len, block_ctx);
  if (apr_err != APR_SUCCESS)
    {
      err = crypto_error_create(ctx, apr_err,
                                _("Error during block encryption"));
      goto cleanup;
    }

  /* Finalize the block encryption. Since we padded everything, this should
     not produce any more encrypted output.  */
  apr_err = apr_crypto_block_encrypt_finish(NULL,
                                            &ignored_result_len,
                                            block_ctx);
  if (apr_err != APR_SUCCESS)
    {
      err = crypto_error_create(ctx, apr_err,
                                _("Error finalizing block encryption"));
      goto cleanup;
    }

  *ciphertext = wrap_as_string(result, result_len, result_pool);
  *iv = wrap_as_string(iv_vector, iv_len, result_pool);
  *salt = wrap_as_string(salt_vector, SALT_LEN, result_pool);
  *checktext = svn_checksum_to_cstring(stuff_sum, result_pool);

 cleanup:
  apr_crypto_block_cleanup(block_ctx);
  return err;
#else /* SVN_HAVE_CRYPTO */
  return FUNC13(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                          "Cryptographic support is not available");
#endif /* SVN_HAVE_CRYPTO */
}