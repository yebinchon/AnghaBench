
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {void* id; size_t id_len; int id_set; int * md; int * gen_group; } ;
typedef TYPE_1__ SM2_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;
typedef int EVP_MD ;
typedef int EC_GROUP ;


 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int EC_GROUP_set_asn1_flag (int *,int) ;
 int ERR_R_MALLOC_FAILURE ;







 int OPENSSL_free (void*) ;
 void* OPENSSL_malloc (int) ;
 int SM2_F_PKEY_SM2_CTRL ;
 int SM2_R_INVALID_CURVE ;
 int SM2_R_NO_PARAMETERS_SET ;
 int SM2err (int ,int ) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int pkey_sm2_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    SM2_PKEY_CTX *smctx = ctx->data;
    EC_GROUP *group;
    uint8_t *tmp_id;

    switch (type) {
    case 134:
        group = EC_GROUP_new_by_curve_name(p1);
        if (group == ((void*)0)) {
            SM2err(SM2_F_PKEY_SM2_CTRL, SM2_R_INVALID_CURVE);
            return 0;
        }
        EC_GROUP_free(smctx->gen_group);
        smctx->gen_group = group;
        return 1;

    case 133:
        if (smctx->gen_group == ((void*)0)) {
            SM2err(SM2_F_PKEY_SM2_CTRL, SM2_R_NO_PARAMETERS_SET);
            return 0;
        }
        EC_GROUP_set_asn1_flag(smctx->gen_group, p1);
        return 1;

    case 129:
        smctx->md = p2;
        return 1;

    case 130:
        *(const EVP_MD **)p2 = smctx->md;
        return 1;

    case 128:
        if (p1 > 0) {
            tmp_id = OPENSSL_malloc(p1);
            if (tmp_id == ((void*)0)) {
                SM2err(SM2_F_PKEY_SM2_CTRL, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            memcpy(tmp_id, p2, p1);
            OPENSSL_free(smctx->id);
            smctx->id = tmp_id;
        } else {

            OPENSSL_free(smctx->id);
            smctx->id = ((void*)0);
        }
        smctx->id_len = (size_t)p1;
        smctx->id_set = 1;
        return 1;

    case 132:
        memcpy(p2, smctx->id, smctx->id_len);
        return 1;

    case 131:
        *(size_t *)p2 = smctx->id_len;
        return 1;

    default:
        return -2;
    }
}
