
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ cyc; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct pt_encoder {int dummy; } ;


 int ppt_cyc ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;

int pt_encode_cyc(struct pt_encoder *encoder, uint32_t ctc)
{
 struct pt_packet packet;

 packet.type = ppt_cyc;
 packet.payload.cyc.value = ctc;

 return pt_enc_next(encoder, &packet);
}
