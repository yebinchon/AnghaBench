
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned char* read_sequence; } ;
struct TYPE_7__ {unsigned long map; int max_seq_num; } ;
struct TYPE_6__ {TYPE_5__ rlayer; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ DTLS1_BITMAP ;


 int RECORD_LAYER_get_rrec (TYPE_5__*) ;
 int SSL3_RECORD_set_seq_num (int ,unsigned char const*) ;
 int satsub64be (unsigned char const*,int ) ;

int dtls1_record_replay_check(SSL *s, DTLS1_BITMAP *bitmap)
{
    int cmp;
    unsigned int shift;
    const unsigned char *seq = s->rlayer.read_sequence;

    cmp = satsub64be(seq, bitmap->max_seq_num);
    if (cmp > 0) {
        SSL3_RECORD_set_seq_num(RECORD_LAYER_get_rrec(&s->rlayer), seq);
        return 1;
    }
    shift = -cmp;
    if (shift >= sizeof(bitmap->map) * 8)
        return 0;
    else if (bitmap->map & (1UL << shift))
        return 0;

    SSL3_RECORD_set_seq_num(RECORD_LAYER_get_rrec(&s->rlayer), seq);
    return 1;
}
