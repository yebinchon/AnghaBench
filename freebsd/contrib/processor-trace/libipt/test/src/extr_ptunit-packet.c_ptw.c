
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct packet_fixture {TYPE_3__* packet; } ;
typedef int mask ;
struct TYPE_4__ {int payload; int ip; int plc; } ;
struct TYPE_5__ {TYPE_1__ ptw; } ;
struct TYPE_6__ {TYPE_2__ payload; int type; } ;


 int pfix_test ;
 int ppt_ptw ;
 int pt_ptw_size (int ) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct packet_fixture*) ;
 int ptu_uint_le (size_t,int) ;

__attribute__((used)) static struct ptunit_result ptw(struct packet_fixture *pfix, uint8_t plc,
    int ip)
{
 uint64_t pl, mask;
 int size;

 size = pt_ptw_size(plc);
 ptu_int_gt(size, 0);

 pl = 0x1234567890abcdefull;

 ptu_uint_le((size_t) size, sizeof(mask));
 mask = ~0ull >> ((sizeof(mask) - (size_t) size) * 8);

 pfix->packet[0].type = ppt_ptw;
 pfix->packet[0].payload.ptw.payload = pl & mask;
 pfix->packet[0].payload.ptw.plc = plc;
 pfix->packet[0].payload.ptw.ip = ip ? 1 : 0;

 ptu_test(pfix_test, pfix);

 return ptu_passed();
}
