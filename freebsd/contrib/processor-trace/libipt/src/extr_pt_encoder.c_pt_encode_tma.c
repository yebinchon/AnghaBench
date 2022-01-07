
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_3__ {void* fc; void* ctc; } ;
struct TYPE_4__ {TYPE_1__ tma; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct pt_encoder {int dummy; } ;


 int ppt_tma ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;

int pt_encode_tma(struct pt_encoder *encoder, uint16_t ctc, uint16_t fc)
{
 struct pt_packet packet;

 packet.type = ppt_tma;
 packet.payload.tma.ctc = ctc;
 packet.payload.tma.fc = fc;

 return pt_enc_next(encoder, &packet);
}
