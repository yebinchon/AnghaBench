
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prf_key; int cache; int nonce; } ;
typedef TYPE_1__ pdf_ctx ;
typedef int buf ;
typedef int aes_int_key ;
typedef int UINT8 ;


 int UMAC_KEY_LEN ;
 int aes_encryption (int ,int ,int ) ;
 int aes_key_setup (int *,int ) ;
 int explicit_bzero (int *,int) ;
 int kdf (int *,int ,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void pdf_init(pdf_ctx *pc, aes_int_key prf_key)
{
    UINT8 buf[UMAC_KEY_LEN];

    kdf(buf, prf_key, 0, UMAC_KEY_LEN);
    aes_key_setup(buf, pc->prf_key);


    memset(pc->nonce, 0, sizeof(pc->nonce));
    aes_encryption(pc->nonce, pc->cache, pc->prf_key);
    explicit_bzero(buf, sizeof(buf));
}
