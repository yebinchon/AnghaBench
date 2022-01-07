
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_3__ {int bit_size; } ;
struct TYPE_4__ {TYPE_1__ tnt; } ;
struct pt_packet {TYPE_2__ payload; int type; } ;
struct fetch_fixture {int dummy; } ;
typedef int packet ;


 int fetch_packet ;
 int memset (struct pt_packet*,int ,int) ;
 int ppt_tnt_8 ;
 int pt_decode_tnt_8 ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct fetch_fixture*,struct pt_packet*,int *) ;

__attribute__((used)) static struct ptunit_result fetch_tnt_8(struct fetch_fixture *ffix)
{
 struct pt_packet packet;

 memset(&packet, 0, sizeof(packet));
 packet.type = ppt_tnt_8;
 packet.payload.tnt.bit_size = 1;

 ptu_test(fetch_packet, ffix, &packet, &pt_decode_tnt_8);

 return ptu_passed();
}
