
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int payload; } ;
struct TYPE_4__ {TYPE_1__ mnt; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct pt_encoder {int dummy; } ;


 int ppt_mnt ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;

int pt_encode_mnt(struct pt_encoder *encoder, uint64_t payload)
{
 struct pt_packet packet;

 packet.type = ppt_mnt;
 packet.payload.mnt.payload = payload;

 return pt_enc_next(encoder, &packet);
}
