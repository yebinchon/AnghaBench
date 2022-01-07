
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ parameter; int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
struct TYPE_8__ {int hashed_msg; TYPE_1__* hash_algo; } ;
struct TYPE_7__ {TYPE_3__* msg_imprint; } ;
typedef TYPE_2__ TS_TST_INFO ;
typedef TYPE_3__ TS_MSG_IMPRINT ;


 int ASN1_STRING_get0_data (int ) ;
 scalar_t__ ASN1_STRING_length (int ) ;
 scalar_t__ ASN1_TYPE_get (scalar_t__) ;
 scalar_t__ OBJ_cmp (int ,int ) ;
 int TS_F_TS_CHECK_IMPRINTS ;
 int TS_R_MESSAGE_IMPRINT_MISMATCH ;
 int TSerr (int ,int ) ;
 scalar_t__ V_ASN1_NULL ;
 scalar_t__ memcmp (unsigned char const*,int ,unsigned int) ;

__attribute__((used)) static int ts_check_imprints(X509_ALGOR *algor_a,
                             const unsigned char *imprint_a, unsigned len_a,
                             TS_TST_INFO *tst_info)
{
    TS_MSG_IMPRINT *b = tst_info->msg_imprint;
    X509_ALGOR *algor_b = b->hash_algo;
    int ret = 0;

    if (algor_a) {
        if (OBJ_cmp(algor_a->algorithm, algor_b->algorithm))
            goto err;


        if ((algor_a->parameter
             && ASN1_TYPE_get(algor_a->parameter) != V_ASN1_NULL)
            || (algor_b->parameter
                && ASN1_TYPE_get(algor_b->parameter) != V_ASN1_NULL))
            goto err;
    }

    ret = len_a == (unsigned)ASN1_STRING_length(b->hashed_msg) &&
        memcmp(imprint_a, ASN1_STRING_get0_data(b->hashed_msg), len_a) == 0;
 err:
    if (!ret)
        TSerr(TS_F_TS_CHECK_IMPRINTS, TS_R_MESSAGE_IMPRINT_MISMATCH);
    return ret;
}
