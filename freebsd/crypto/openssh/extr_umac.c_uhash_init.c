
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uhash_ctx_t ;
typedef int uhash_ctx ;
typedef int buf ;
typedef int aes_int_key ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_4__ {int* poly_key_8; int* poly_accum; int* ip_keys; int* ip_trans; int hash; } ;


 int STREAMS ;
 int endian_convert_if_le (int*,int,int) ;
 int explicit_bzero (int*,int) ;
 int kdf (int*,int ,int,int) ;
 int memcpy (int*,int*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int nh_init (int *,int ) ;
 int p36 ;

__attribute__((used)) static void uhash_init(uhash_ctx_t ahc, aes_int_key prf_key)
{
    int i;
    UINT8 buf[(8*STREAMS+4)*sizeof(UINT64)];


    memset(ahc, 0, sizeof(uhash_ctx));


    nh_init(&ahc->hash, prf_key);


    kdf(buf, prf_key, 2, sizeof(buf));
    for (i = 0; i < STREAMS; i++) {




        memcpy(ahc->poly_key_8+i, buf+24*i, 8);
        endian_convert_if_le(ahc->poly_key_8+i, 8, 8);

        ahc->poly_key_8[i] &= ((UINT64)0x01ffffffu << 32) + 0x01ffffffu;
        ahc->poly_accum[i] = 1;
    }


    kdf(buf, prf_key, 3, sizeof(buf));
    for (i = 0; i < STREAMS; i++)
          memcpy(ahc->ip_keys+4*i, buf+(8*i+4)*sizeof(UINT64),
                                                 4*sizeof(UINT64));
    endian_convert_if_le(ahc->ip_keys, sizeof(UINT64),
                                                  sizeof(ahc->ip_keys));
    for (i = 0; i < STREAMS*4; i++)
        ahc->ip_keys[i] %= p36;



    kdf(ahc->ip_trans, prf_key, 4, STREAMS * sizeof(UINT32));
    endian_convert_if_le(ahc->ip_trans, sizeof(UINT32),
                         STREAMS * sizeof(UINT32));
    explicit_bzero(buf, sizeof(buf));
}
