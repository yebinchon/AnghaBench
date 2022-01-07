
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ipc; int ip; } ;
struct TYPE_4__ {TYPE_1__ ip; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct pt_encoder {int dummy; } ;
typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;


 int ppt_fup ;
 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;

int pt_encode_fup(struct pt_encoder *encoder, uint64_t ip,
    enum pt_ip_compression ipc)
{
 struct pt_packet packet;

 packet.type = ppt_fup;
 packet.payload.ip.ip = ip;
 packet.payload.ip.ipc = ipc;

 return pt_enc_next(encoder, &packet);
}
