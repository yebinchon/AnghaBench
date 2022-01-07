
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct packet_fixture {TYPE_3__* packet; int encoder; } ;
struct TYPE_4__ {int ctc; int fc; } ;
struct TYPE_5__ {TYPE_1__ tma; } ;
struct TYPE_6__ {TYPE_2__ payload; int type; } ;


 int ppt_tma ;
 int pt_enc_next (int *,TYPE_3__*) ;
 int pte_bad_packet ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result tma_bad(struct packet_fixture *pfix)
{
 int errcode;

 pfix->packet[0].type = ppt_tma;
 pfix->packet[0].payload.tma.ctc = 0x42;
 pfix->packet[0].payload.tma.fc = 0x200;

 errcode = pt_enc_next(&pfix->encoder, &pfix->packet[0]);
 ptu_int_eq(errcode, -pte_bad_packet);

 return ptu_passed();
}
