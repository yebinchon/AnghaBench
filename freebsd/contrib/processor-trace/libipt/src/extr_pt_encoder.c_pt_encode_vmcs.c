
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ vmcs; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct pt_encoder {int dummy; } ;


 int ppt_vmcs ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;

int pt_encode_vmcs(struct pt_encoder *encoder, uint64_t payload)
{
 struct pt_packet packet;

 packet.type = ppt_vmcs;
 packet.payload.vmcs.base = payload;

 return pt_enc_next(encoder, &packet);
}
