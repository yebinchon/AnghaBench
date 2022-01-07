
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
struct TYPE_3__ {int payload; scalar_t__ bit_size; } ;
struct TYPE_4__ {TYPE_1__ tnt; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct pt_encoder {int dummy; } ;


 int ppt_tnt_64 ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;

int pt_encode_tnt_64(struct pt_encoder *encoder, uint64_t tnt, int size)
{
 struct pt_packet packet;

 packet.type = ppt_tnt_64;
 packet.payload.tnt.bit_size = (uint8_t) size;
 packet.payload.tnt.payload = tnt;

 return pt_enc_next(encoder, &packet);
}
