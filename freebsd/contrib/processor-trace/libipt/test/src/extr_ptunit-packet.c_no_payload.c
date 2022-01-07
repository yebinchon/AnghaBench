
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct packet_fixture {TYPE_1__* packet; } ;
typedef enum pt_packet_type { ____Placeholder_pt_packet_type } pt_packet_type ;
struct TYPE_2__ {int type; } ;


 int pfix_test ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct packet_fixture*) ;

__attribute__((used)) static struct ptunit_result no_payload(struct packet_fixture *pfix,
           enum pt_packet_type type)
{
 pfix->packet[0].type = type;

 ptu_test(pfix_test, pfix);

 return ptu_passed();
}
