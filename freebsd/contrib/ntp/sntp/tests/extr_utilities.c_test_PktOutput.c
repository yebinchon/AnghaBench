
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pkt {int xmt; int li_vn_mode; } ;
struct TYPE_3__ {int l_ui; int l_uf; } ;
typedef TYPE_1__ l_fp ;


 int CreatePath (char*,int ) ;
 int FinishDebugTest (int ,char*) ;
 int HTONL_FP (TYPE_1__*,int *) ;
 int INPUT_DIR ;
 int InitDebugTest (char*) ;
 int LEAP_NOWARNING ;
 int LEN_PKT_NOMAC ;
 int MODE_SERVER ;
 int NTP_VERSION ;
 int PKT_LI_VN_MODE (int ,int ,int ) ;
 int memset (struct pkt*,int ,int) ;
 int outputFile ;
 int pkt_output (struct pkt*,int ,int ) ;

void
test_PktOutput(void) {
 char * filename = "debug-output-pkt";
 InitDebugTest(filename);

 struct pkt testpkt;
 memset(&testpkt, 0, sizeof(struct pkt));
 testpkt.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOWARNING,
         NTP_VERSION,
         MODE_SERVER);

 l_fp test;
 test.l_ui = 8;
 test.l_uf = 2147483647;
 HTONL_FP(&test, &testpkt.xmt);

 pkt_output(&testpkt, LEN_PKT_NOMAC, outputFile);

 FinishDebugTest(CreatePath("debug-input-pkt", INPUT_DIR), filename);
}
