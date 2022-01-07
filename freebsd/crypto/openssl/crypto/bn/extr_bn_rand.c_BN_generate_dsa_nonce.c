
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int random_bytes ;
typedef int private_bytes ;
typedef int done ;
typedef int SHA512_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_F_BN_GENERATE_DSA_NONCE ;
 int BN_R_PRIVATE_KEY_TOO_LARGE ;
 int BN_bin2bn (unsigned char*,unsigned int const,int *) ;
 scalar_t__ BN_bn2binpad (int const*,unsigned char*,int) ;
 int BN_mod (int *,int *,int const*,int *) ;
 int BN_num_bytes (int const*) ;
 int BNerr (int ,int ) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (unsigned int const) ;
 int RAND_priv_bytes (unsigned char*,int) ;
 int SHA512_DIGEST_LENGTH ;
 int SHA512_Final (unsigned char*,int *) ;
 int SHA512_Init (int *) ;
 int SHA512_Update (int *,...) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;

int BN_generate_dsa_nonce(BIGNUM *out, const BIGNUM *range,
                          const BIGNUM *priv, const unsigned char *message,
                          size_t message_len, BN_CTX *ctx)
{
    SHA512_CTX sha;




    unsigned char random_bytes[64];
    unsigned char digest[SHA512_DIGEST_LENGTH];
    unsigned done, todo;

    const unsigned num_k_bytes = BN_num_bytes(range) + 8;
    unsigned char private_bytes[96];
    unsigned char *k_bytes;
    int ret = 0;

    k_bytes = OPENSSL_malloc(num_k_bytes);
    if (k_bytes == ((void*)0))
        goto err;


    if (BN_bn2binpad(priv, private_bytes, sizeof(private_bytes)) < 0) {





        BNerr(BN_F_BN_GENERATE_DSA_NONCE, BN_R_PRIVATE_KEY_TOO_LARGE);
        goto err;
    }

    for (done = 0; done < num_k_bytes;) {
        if (RAND_priv_bytes(random_bytes, sizeof(random_bytes)) != 1)
            goto err;
        SHA512_Init(&sha);
        SHA512_Update(&sha, &done, sizeof(done));
        SHA512_Update(&sha, private_bytes, sizeof(private_bytes));
        SHA512_Update(&sha, message, message_len);
        SHA512_Update(&sha, random_bytes, sizeof(random_bytes));
        SHA512_Final(digest, &sha);

        todo = num_k_bytes - done;
        if (todo > SHA512_DIGEST_LENGTH)
            todo = SHA512_DIGEST_LENGTH;
        memcpy(k_bytes + done, digest, todo);
        done += todo;
    }

    if (!BN_bin2bn(k_bytes, num_k_bytes, out))
        goto err;
    if (BN_mod(out, out, range, ctx) != 1)
        goto err;
    ret = 1;

 err:
    OPENSSL_free(k_bytes);
    OPENSSL_cleanse(private_bytes, sizeof(private_bytes));
    return ret;
}
