
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ pitem ;
struct TYPE_10__ {int * packet; int rrec; int rbuf; int packet_length; } ;
struct TYPE_7__ {int * read_sequence; int rrec; int rbuf; int packet_length; int * packet; } ;
struct TYPE_9__ {TYPE_1__ rlayer; } ;
typedef int SSL3_RECORD ;
typedef int SSL3_BUFFER ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ DTLS1_RECORD_DATA ;


 int SSL3_BUFFER_release (int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int dtls1_copy_record(SSL *s, pitem *item)
{
    DTLS1_RECORD_DATA *rdata;

    rdata = (DTLS1_RECORD_DATA *)item->data;

    SSL3_BUFFER_release(&s->rlayer.rbuf);

    s->rlayer.packet = rdata->packet;
    s->rlayer.packet_length = rdata->packet_length;
    memcpy(&s->rlayer.rbuf, &(rdata->rbuf), sizeof(SSL3_BUFFER));
    memcpy(&s->rlayer.rrec, &(rdata->rrec), sizeof(SSL3_RECORD));


    memcpy(&(s->rlayer.read_sequence[2]), &(rdata->packet[5]), 6);

    return 1;
}
