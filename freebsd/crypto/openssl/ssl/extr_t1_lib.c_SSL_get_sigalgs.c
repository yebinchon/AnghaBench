
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int sig; int hash; int sigandhash; } ;
struct TYPE_9__ {TYPE_2__* s3; } ;
struct TYPE_7__ {int* peer_sigalgs; size_t peer_sigalgslen; } ;
struct TYPE_8__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ SIGALG_LOOKUP ;


 size_t INT_MAX ;
 int NID_undef ;
 TYPE_4__* tls1_lookup_sigalg (int) ;

int SSL_get_sigalgs(SSL *s, int idx,
                    int *psign, int *phash, int *psignhash,
                    unsigned char *rsig, unsigned char *rhash)
{
    uint16_t *psig = s->s3->tmp.peer_sigalgs;
    size_t numsigalgs = s->s3->tmp.peer_sigalgslen;
    if (psig == ((void*)0) || numsigalgs > INT_MAX)
        return 0;
    if (idx >= 0) {
        const SIGALG_LOOKUP *lu;

        if (idx >= (int)numsigalgs)
            return 0;
        psig += idx;
        if (rhash != ((void*)0))
            *rhash = (unsigned char)((*psig >> 8) & 0xff);
        if (rsig != ((void*)0))
            *rsig = (unsigned char)(*psig & 0xff);
        lu = tls1_lookup_sigalg(*psig);
        if (psign != ((void*)0))
            *psign = lu != ((void*)0) ? lu->sig : NID_undef;
        if (phash != ((void*)0))
            *phash = lu != ((void*)0) ? lu->hash : NID_undef;
        if (psignhash != ((void*)0))
            *psignhash = lu != ((void*)0) ? lu->sigandhash : NID_undef;
    }
    return (int)numsigalgs;
}
