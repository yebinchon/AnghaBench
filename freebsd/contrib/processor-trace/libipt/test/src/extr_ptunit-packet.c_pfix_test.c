
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct packet_fixture {TYPE_1__* packet; int decoder; int encoder; } ;
struct TYPE_5__ {int size; } ;


 int pt_enc_next (int *,TYPE_1__*) ;
 int pt_pkt_next (int *,TYPE_1__*,int) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_pkt_eq (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static struct ptunit_result pfix_test(struct packet_fixture *pfix)
{
 int size;

 size = pt_enc_next(&pfix->encoder, &pfix->packet[0]);
 ptu_int_gt(size, 0);

 pfix->packet[0].size = (uint8_t) size;

 size = pt_pkt_next(&pfix->decoder, &pfix->packet[1],
      sizeof(pfix->packet[1]));
 ptu_int_gt(size, 0);

 return ptu_pkt_eq(&pfix->packet[0], &pfix->packet[1]);
}
