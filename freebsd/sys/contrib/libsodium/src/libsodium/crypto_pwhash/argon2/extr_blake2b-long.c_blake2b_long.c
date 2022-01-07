
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const uint8_t ;
typedef size_t uint32_t ;
typedef int outlen_bytes ;
typedef int crypto_generichash_blake2b_state ;
typedef int blake_state ;


 int STORE32_LE (unsigned char const*,size_t) ;
 int TRY (int ) ;
 size_t UINT32_MAX ;
 int crypto_generichash_blake2b (unsigned char const*,size_t,unsigned char const*,size_t,int *,unsigned int) ;
 size_t crypto_generichash_blake2b_BYTES_MAX ;
 int crypto_generichash_blake2b_final (int *,unsigned char const*,size_t) ;
 int crypto_generichash_blake2b_init (int *,int *,unsigned int,size_t) ;
 int crypto_generichash_blake2b_update (int *,unsigned char const*,size_t) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;
 int sodium_memzero (int *,int) ;

int
blake2b_long(void *pout, size_t outlen, const void *in, size_t inlen)
{
    uint8_t *out = (uint8_t *) pout;
    crypto_generichash_blake2b_state blake_state;
    uint8_t outlen_bytes[4 ] = { 0 };
    int ret = -1;

    if (outlen > UINT32_MAX) {
        goto fail;
    }


    STORE32_LE(outlen_bytes, (uint32_t) outlen);
    if (outlen <= crypto_generichash_blake2b_BYTES_MAX) {
        do { ret = crypto_generichash_blake2b_init(&blake_state, ((void*)0), 0U, outlen); if (ret < 0) { goto fail; } } while ((void) 0, 0);
        do { ret = crypto_generichash_blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)); if (ret < 0) { goto fail; } } while ((void) 0, 0);

        do { ret = crypto_generichash_blake2b_update( &blake_state, (const unsigned char *) in, inlen); if (ret < 0) { goto fail; } } while ((void) 0, 0);

        do { ret = crypto_generichash_blake2b_final(&blake_state, out, outlen); if (ret < 0) { goto fail; } } while ((void) 0, 0);
    } else {
        uint32_t toproduce;
        uint8_t out_buffer[crypto_generichash_blake2b_BYTES_MAX];
        uint8_t in_buffer[crypto_generichash_blake2b_BYTES_MAX];
        do { ret = crypto_generichash_blake2b_init( &blake_state, ((void*)0), 0U, crypto_generichash_blake2b_BYTES_MAX); if (ret < 0) { goto fail; } } while ((void) 0, 0);

        do { ret = crypto_generichash_blake2b_update(&blake_state, outlen_bytes, sizeof(outlen_bytes)); if (ret < 0) { goto fail; } } while ((void) 0, 0);

        do { ret = crypto_generichash_blake2b_update( &blake_state, (const unsigned char *) in, inlen); if (ret < 0) { goto fail; } } while ((void) 0, 0);

        do { ret = crypto_generichash_blake2b_final( &blake_state, out_buffer, crypto_generichash_blake2b_BYTES_MAX); if (ret < 0) { goto fail; } } while ((void) 0, 0);

        memcpy(out, out_buffer, crypto_generichash_blake2b_BYTES_MAX / 2);
        out += crypto_generichash_blake2b_BYTES_MAX / 2;
        toproduce =
            (uint32_t) outlen - crypto_generichash_blake2b_BYTES_MAX / 2;

        while (toproduce > crypto_generichash_blake2b_BYTES_MAX) {
            memcpy(in_buffer, out_buffer, crypto_generichash_blake2b_BYTES_MAX);
            do { ret = crypto_generichash_blake2b( out_buffer, crypto_generichash_blake2b_BYTES_MAX, in_buffer, crypto_generichash_blake2b_BYTES_MAX, ((void*)0), 0U); if (ret < 0) { goto fail; } } while ((void) 0, 0);


            memcpy(out, out_buffer, crypto_generichash_blake2b_BYTES_MAX / 2);
            out += crypto_generichash_blake2b_BYTES_MAX / 2;
            toproduce -= crypto_generichash_blake2b_BYTES_MAX / 2;
        }

        memcpy(in_buffer, out_buffer, crypto_generichash_blake2b_BYTES_MAX);
        do { ret = crypto_generichash_blake2b(out_buffer, toproduce, in_buffer, crypto_generichash_blake2b_BYTES_MAX, ((void*)0), 0U); if (ret < 0) { goto fail; } } while ((void) 0, 0);


        memcpy(out, out_buffer, toproduce);
    }
fail:
    sodium_memzero(&blake_state, sizeof(blake_state));
    return ret;

}
