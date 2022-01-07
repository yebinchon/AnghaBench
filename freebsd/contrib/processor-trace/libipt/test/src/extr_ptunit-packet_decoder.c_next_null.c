
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int dummy; } ;
typedef int packet ;


 int pt_pkt_next (struct pt_packet_decoder*,struct pt_packet*,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result next_null(void)
{
 struct pt_packet_decoder decoder;
 struct pt_packet packet;
 int errcode;

 errcode = pt_pkt_next(((void*)0), &packet, sizeof(packet));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_pkt_next(&decoder, ((void*)0), sizeof(packet));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
