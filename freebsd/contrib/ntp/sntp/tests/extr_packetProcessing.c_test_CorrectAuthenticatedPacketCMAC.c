
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * exten; } ;
struct TYPE_6__ {TYPE_3__ p; } ;
struct TYPE_5__ {int p; } ;


 int AUTHENTICATION ;
 int CMAC ;
 int CMAC_LENGTH ;
 int ENABLED_OPT (int ) ;
 int LEN_PKT_NOMAC ;
 int MAX_MAC_LEN ;
 int MODE_SERVER ;
 int PrepareAuthenticationTest (int,int ,int ,char*) ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_TRUE (int ) ;
 int TEST_IGNORE_MESSAGE (char*) ;
 int htonl (int) ;
 int key_ptr ;
 int make_mac (TYPE_3__*,int,int ,int ,int *) ;
 int process_pkt (TYPE_3__*,int *,int,int ,int *,char*) ;
 TYPE_2__ testpkt ;
 int testsock ;
 TYPE_1__ testspkt ;

void
test_CorrectAuthenticatedPacketCMAC(void)
{
 TEST_IGNORE_MESSAGE("OpenSSL CMAC not used, skipping...");


}
