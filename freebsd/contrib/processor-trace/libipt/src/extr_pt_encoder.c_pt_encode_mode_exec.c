
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exec; } ;
struct TYPE_5__ {TYPE_1__ bits; int leaf; } ;
struct TYPE_6__ {TYPE_2__ mode; } ;
struct pt_packet {TYPE_3__ payload; int type; } ;
struct pt_encoder {int dummy; } ;
typedef enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;


 int ppt_mode ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;
 int pt_mol_exec ;
 int pt_set_exec_mode (int) ;

int pt_encode_mode_exec(struct pt_encoder *encoder, enum pt_exec_mode mode)
{
 struct pt_packet packet;

 packet.type = ppt_mode;
 packet.payload.mode.leaf = pt_mol_exec;
 packet.payload.mode.bits.exec = pt_set_exec_mode(mode);

 return pt_enc_next(encoder, &packet);
}
