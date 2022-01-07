
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {unsigned int usage; size_t mtype; unsigned int selector; unsigned int dlen; int data; } ;
typedef TYPE_2__ danetls_record ;
struct TYPE_9__ {int num_untrusted; TYPE_4__* dane; } ;
typedef TYPE_3__ X509_STORE_CTX ;
typedef unsigned char X509 ;
struct TYPE_10__ {int mdpth; int umask; unsigned char* mcert; TYPE_2__* mtlsa; TYPE_1__* dctx; int trecs; } ;
struct TYPE_7__ {unsigned int* mdord; int ** mdevp; } ;
typedef TYPE_4__ SSL_DANE ;
typedef int EVP_MD ;


 int DANETLS_DANE_MASK ;
 int DANETLS_EE_MASK ;
 size_t DANETLS_MATCHING_FULL ;
 unsigned int DANETLS_NONE ;
 int DANETLS_PKIX_MASK ;
 int DANETLS_TA_MASK ;
 int DANETLS_USAGE_BIT (unsigned int) ;
 int EVP_Digest (unsigned char*,unsigned int,unsigned char*,unsigned int*,int const*,int ) ;
 int EVP_MAX_MD_SIZE ;
 int OPENSSL_free (unsigned char*) ;
 int X509_up_ref (unsigned char*) ;
 unsigned char* dane_i2d (unsigned char*,unsigned int,unsigned int*) ;
 scalar_t__ memcmp (unsigned char*,int ,unsigned int) ;
 int sk_danetls_record_num (int ) ;
 TYPE_2__* sk_danetls_record_value (int ,int) ;

__attribute__((used)) static int dane_match(X509_STORE_CTX *ctx, X509 *cert, int depth)
{
    SSL_DANE *dane = ctx->dane;
    unsigned usage = DANETLS_NONE;
    unsigned selector = DANETLS_NONE;
    unsigned ordinal = DANETLS_NONE;
    unsigned mtype = DANETLS_NONE;
    unsigned char *i2dbuf = ((void*)0);
    unsigned int i2dlen = 0;
    unsigned char mdbuf[EVP_MAX_MD_SIZE];
    unsigned char *cmpbuf = ((void*)0);
    unsigned int cmplen = 0;
    int i;
    int recnum;
    int matched = 0;
    danetls_record *t = ((void*)0);
    uint32_t mask;

    mask = (depth == 0) ? DANETLS_EE_MASK : DANETLS_TA_MASK;




    if (depth >= ctx->num_untrusted)
        mask &= DANETLS_PKIX_MASK;






    if (dane->mdpth >= 0)
        mask &= ~DANETLS_PKIX_MASK;
    recnum = (dane->umask & mask) ? sk_danetls_record_num(dane->trecs) : 0;
    for (i = 0; matched == 0 && i < recnum; ++i) {
        t = sk_danetls_record_value(dane->trecs, i);
        if ((DANETLS_USAGE_BIT(t->usage) & mask) == 0)
            continue;
        if (t->usage != usage) {
            usage = t->usage;


            mtype = DANETLS_NONE;
            ordinal = dane->dctx->mdord[t->mtype];
        }
        if (t->selector != selector) {
            selector = t->selector;


            OPENSSL_free(i2dbuf);
            i2dbuf = dane_i2d(cert, selector, &i2dlen);
            if (i2dbuf == ((void*)0))
                return -1;


            mtype = DANETLS_NONE;
            ordinal = dane->dctx->mdord[t->mtype];
        } else if (t->mtype != DANETLS_MATCHING_FULL) {
            if (dane->dctx->mdord[t->mtype] < ordinal)
                continue;
        }





        if (t->mtype != mtype) {
            const EVP_MD *md = dane->dctx->mdevp[mtype = t->mtype];
            cmpbuf = i2dbuf;
            cmplen = i2dlen;

            if (md != ((void*)0)) {
                cmpbuf = mdbuf;
                if (!EVP_Digest(i2dbuf, i2dlen, cmpbuf, &cmplen, md, 0)) {
                    matched = -1;
                    break;
                }
            }
        }






        if (cmplen == t->dlen &&
            memcmp(cmpbuf, t->data, cmplen) == 0) {
            if (DANETLS_USAGE_BIT(usage) & DANETLS_DANE_MASK)
                matched = 1;
            if (matched || dane->mdpth < 0) {
                dane->mdpth = depth;
                dane->mtlsa = t;
                OPENSSL_free(dane->mcert);
                dane->mcert = cert;
                X509_up_ref(cert);
            }
            break;
        }
    }


    OPENSSL_free(i2dbuf);
    return matched;
}
