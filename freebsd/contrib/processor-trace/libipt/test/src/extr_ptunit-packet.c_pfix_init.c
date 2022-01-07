
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_5__ {struct packet_fixture* context; int callback; } ;
struct TYPE_6__ {int size; TYPE_1__ decode; struct TYPE_6__* end; struct TYPE_6__* begin; } ;
struct packet_fixture {scalar_t__ unknown; int decoder; TYPE_2__ config; int encoder; TYPE_2__* buffer; TYPE_2__* packet; } ;


 int memset (TYPE_2__*,int ,int) ;
 int pfix_decode_unknown ;
 int pt_encoder_init (int *,TYPE_2__*) ;
 int pt_pkt_decoder_init (int *,TYPE_2__*) ;
 int pt_pkt_sync_set (int *,int) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result pfix_init(struct packet_fixture *pfix)
{
 int errcode;

 memset(pfix->buffer, 0, sizeof(pfix->buffer));
 memset(pfix->packet, 0, sizeof(pfix->packet));
 memset(&pfix->config, 0, sizeof(pfix->config));
 pfix->config.size = sizeof(pfix->config);
 pfix->config.begin = pfix->buffer;
 pfix->config.end = pfix->buffer + sizeof(pfix->buffer);
 pfix->config.decode.callback = pfix_decode_unknown;
 pfix->config.decode.context = pfix;

 pt_encoder_init(&pfix->encoder, &pfix->config);
 pt_pkt_decoder_init(&pfix->decoder, &pfix->config);

 errcode = pt_pkt_sync_set(&pfix->decoder, 0x0ull);
 ptu_int_eq(errcode, 0);

 pfix->unknown = 0;

 return ptu_passed();
}
