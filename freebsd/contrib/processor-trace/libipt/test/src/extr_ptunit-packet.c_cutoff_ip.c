
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_10__ {scalar_t__ end; } ;
struct TYPE_11__ {TYPE_3__ config; } ;
struct TYPE_13__ {scalar_t__ pos; } ;
struct packet_fixture {TYPE_5__* packet; TYPE_4__ decoder; TYPE_6__ encoder; } ;
typedef enum pt_packet_type { ____Placeholder_pt_packet_type } pt_packet_type ;
struct TYPE_8__ {int ipc; } ;
struct TYPE_9__ {TYPE_1__ ip; } ;
struct TYPE_12__ {int type; TYPE_2__ payload; } ;


 int pt_enc_next (TYPE_6__*,TYPE_5__*) ;
 int pt_ipc_sext_48 ;
 int pt_pkt_next (TYPE_4__*,TYPE_5__*,int) ;
 int pte_eos ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result cutoff_ip(struct packet_fixture *pfix,
          enum pt_packet_type type)
{
 int size;

 pfix->packet[0].type = type;
 pfix->packet[0].payload.ip.ipc = pt_ipc_sext_48;

 size = pt_enc_next(&pfix->encoder, &pfix->packet[0]);
 ptu_int_gt(size, 0);

 pfix->decoder.config.end = pfix->encoder.pos - 1;

 size = pt_pkt_next(&pfix->decoder, &pfix->packet[1],
      sizeof(pfix->packet[1]));
 ptu_int_eq(size, -pte_eos);

 return ptu_passed();
}
