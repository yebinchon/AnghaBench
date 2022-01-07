
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct packet_fixture {TYPE_3__* packet; } ;
typedef enum pt_packet_type { ____Placeholder_pt_packet_type } pt_packet_type ;
typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;
struct TYPE_4__ {int ipc; int ip; } ;
struct TYPE_5__ {TYPE_1__ ip; } ;
struct TYPE_6__ {int type; TYPE_2__ payload; } ;


 int pfix_test ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct packet_fixture*) ;

__attribute__((used)) static struct ptunit_result ip(struct packet_fixture *pfix,
          enum pt_packet_type type,
          enum pt_ip_compression ipc,
          uint64_t ip)
{
 pfix->packet[0].type = type;
 pfix->packet[0].payload.ip.ipc = ipc;
 pfix->packet[0].payload.ip.ip = ip;

 ptu_test(pfix_test, pfix);

 return ptu_passed();
}
