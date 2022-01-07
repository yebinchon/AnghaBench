
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; int sin_family; } ;
struct pkt {TYPE_2__ sa4; int refid; } ;
struct kod_entry {int type; } ;
typedef struct pkt sockaddr_u ;


 int AF_INET ;
 int KOD_DEMOBILIZE ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_MEMORY (char const*,int ,int) ;
 int TRUE ;
 int ZERO (struct pkt) ;
 int handle_pkt (int,struct pkt*,struct pkt*,char const*) ;
 int inet_addr (char const*) ;
 int kod_init_kod_db (char*,int ) ;
 int memcpy (int *,char const*,int) ;
 int search_entry (char const*,struct kod_entry**) ;

void
test_HandleKodDemobilize(void)
{
 static const char * HOSTNAME = "192.0.2.1";
 static const char * REASON = "DENY";
 struct pkt rpkt;
 sockaddr_u host;
 int rpktl;
 struct kod_entry * entry;

 rpktl = KOD_DEMOBILIZE;
 ZERO(rpkt);
 memcpy(&rpkt.refid, REASON, 4);
 ZERO(host);
 host.sa4.sin_family = AF_INET;
 host.sa4.sin_addr.s_addr = inet_addr(HOSTNAME);


 kod_init_kod_db("/dev/null", TRUE);

 TEST_ASSERT_EQUAL(1, handle_pkt(rpktl, &rpkt, &host, HOSTNAME));

 TEST_ASSERT_EQUAL(1, search_entry(HOSTNAME, &entry));
 TEST_ASSERT_EQUAL_MEMORY(REASON, entry->type, 4);
}
