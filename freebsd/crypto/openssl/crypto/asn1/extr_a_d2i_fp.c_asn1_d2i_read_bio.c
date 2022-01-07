
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int * data; } ;
typedef TYPE_1__ BUF_MEM ;
typedef int BIO ;


 size_t ASN1_CHUNK_INITIAL_SIZE ;
 int ASN1_F_ASN1_D2I_READ_BIO ;
 unsigned long ASN1_R_HEADER_TOO_LONG ;
 unsigned long ASN1_R_NOT_ENOUGH_DATA ;
 unsigned long ASN1_R_TOO_LONG ;
 int ASN1_get_object (unsigned char const**,long*,int*,int*,size_t) ;
 int ASN1err (int ,unsigned long) ;
 int BIO_read (int *,int *,size_t) ;
 int BUF_MEM_free (TYPE_1__*) ;
 int BUF_MEM_grow_clean (TYPE_1__*,size_t) ;
 TYPE_1__* BUF_MEM_new () ;
 unsigned long ERR_GET_REASON (int ) ;
 unsigned long ERR_R_MALLOC_FAILURE ;
 int ERR_clear_error () ;
 int ERR_peek_error () ;
 size_t HEADER_SIZE ;
 size_t INT_MAX ;
 scalar_t__ UINT32_MAX ;
 int V_ASN1_EOC ;

int asn1_d2i_read_bio(BIO *in, BUF_MEM **pb)
{
    BUF_MEM *b;
    unsigned char *p;
    int i;
    size_t want = HEADER_SIZE;
    uint32_t eos = 0;
    size_t off = 0;
    size_t len = 0;

    const unsigned char *q;
    long slen;
    int inf, tag, xclass;

    b = BUF_MEM_new();
    if (b == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ERR_R_MALLOC_FAILURE);
        return -1;
    }

    ERR_clear_error();
    for (;;) {
        if (want >= (len - off)) {
            want -= (len - off);

            if (len + want < len || !BUF_MEM_grow_clean(b, len + want)) {
                ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            i = BIO_read(in, &(b->data[len]), want);
            if ((i < 0) && ((len - off) == 0)) {
                ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_NOT_ENOUGH_DATA);
                goto err;
            }
            if (i > 0) {
                if (len + i < len) {
                    ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
                    goto err;
                }
                len += i;
            }
        }


        p = (unsigned char *)&(b->data[off]);
        q = p;
        inf = ASN1_get_object(&q, &slen, &tag, &xclass, len - off);
        if (inf & 0x80) {
            unsigned long e;

            e = ERR_GET_REASON(ERR_peek_error());
            if (e != ASN1_R_TOO_LONG)
                goto err;
            else
                ERR_clear_error();
        }
        i = q - p;
        off += i;

        if (inf & 1) {

            if (eos == UINT32_MAX) {
                ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_HEADER_TOO_LONG);
                goto err;
            }
            eos++;
            want = HEADER_SIZE;
        } else if (eos && (slen == 0) && (tag == V_ASN1_EOC)) {

            eos--;
            if (eos == 0)
                break;
            else
                want = HEADER_SIZE;
        } else {

            want = slen;
            if (want > (len - off)) {
                size_t chunk_max = ASN1_CHUNK_INITIAL_SIZE;

                want -= (len - off);
                if (want > INT_MAX ||
                    len + want < len) {
                    ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
                    goto err;
                }
                while (want > 0) {






                    size_t chunk = want > chunk_max ? chunk_max : want;

                    if (!BUF_MEM_grow_clean(b, len + chunk)) {
                        ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ERR_R_MALLOC_FAILURE);
                        goto err;
                    }
                    want -= chunk;
                    while (chunk > 0) {
                        i = BIO_read(in, &(b->data[len]), chunk);
                        if (i <= 0) {
                            ASN1err(ASN1_F_ASN1_D2I_READ_BIO,
                                    ASN1_R_NOT_ENOUGH_DATA);
                            goto err;
                        }




                        len += i;
                        chunk -= i;
                    }
                    if (chunk_max < INT_MAX/2)
                        chunk_max *= 2;
                }
            }
            if (off + slen < off) {
                ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
                goto err;
            }
            off += slen;
            if (eos == 0) {
                break;
            } else
                want = HEADER_SIZE;
        }
    }

    if (off > INT_MAX) {
        ASN1err(ASN1_F_ASN1_D2I_READ_BIO, ASN1_R_TOO_LONG);
        goto err;
    }

    *pb = b;
    return off;
 err:
    BUF_MEM_free(b);
    return -1;
}
