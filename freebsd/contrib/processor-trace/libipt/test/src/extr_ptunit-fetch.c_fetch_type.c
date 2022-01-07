
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_packet {int type; } ;
struct pt_decoder_function {int dummy; } ;
struct fetch_fixture {int dummy; } ;
typedef int packet ;
typedef enum pt_packet_type { ____Placeholder_pt_packet_type } pt_packet_type ;


 int fetch_packet ;
 int memset (struct pt_packet*,int ,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct fetch_fixture*,struct pt_packet*,struct pt_decoder_function const*) ;

__attribute__((used)) static struct ptunit_result fetch_type(struct fetch_fixture *ffix,
           enum pt_packet_type type,
           const struct pt_decoder_function *dfun)
{
 struct pt_packet packet;

 memset(&packet, 0, sizeof(packet));
 packet.type = type;

 ptu_test(fetch_packet, ffix, &packet, dfun);

 return ptu_passed();
}
