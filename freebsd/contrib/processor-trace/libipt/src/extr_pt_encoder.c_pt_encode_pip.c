
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_3__ {int nr; int cr3; } ;
struct TYPE_4__ {TYPE_1__ pip; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct pt_encoder {int dummy; } ;


 int ppt_pip ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;
 int pt_pl_pip_nr ;

int pt_encode_pip(struct pt_encoder *encoder, uint64_t cr3, uint8_t flags)
{
 struct pt_packet packet;

 packet.type = ppt_pip;
 packet.payload.pip.cr3 = cr3;
 packet.payload.pip.nr = (flags & pt_pl_pip_nr) != 0;

 return pt_enc_next(encoder, &packet);
}
