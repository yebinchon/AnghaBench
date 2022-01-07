
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned long l_ui; unsigned long l_uf; } ;
typedef TYPE_3__ l_fp ;
struct TYPE_8__ {int org; int refid; int stratum; int li_vn_mode; } ;
struct TYPE_11__ {TYPE_2__ p; } ;
struct TYPE_7__ {int xmt; } ;
struct TYPE_10__ {TYPE_1__ p; } ;


 int HTONL_FP (TYPE_3__*,int *) ;
 int LEAP_NOWARNING ;
 int MODE_SERVER ;
 int NTP_VERSION ;
 int PKT_LI_VN_MODE (int ,int ,int ) ;
 int STRATUM_REFCLOCK ;
 int memcpy (int *,char*,int) ;
 int restoreKeyDb ;
 int sntptest () ;
 TYPE_5__ testpkt ;
 TYPE_4__ testspkt ;

void
setUp(void)
{

 sntptest();
 restoreKeyDb = 0;




 testpkt.p.li_vn_mode = PKT_LI_VN_MODE(LEAP_NOWARNING, NTP_VERSION,
          MODE_SERVER);
 testpkt.p.stratum = STRATUM_REFCLOCK;
 memcpy(&testpkt.p.refid, "GPS\0", 4);




 l_fp tmp;
 tmp.l_ui = 1000UL;
 tmp.l_uf = 0UL;

 HTONL_FP(&tmp, &testpkt.p.org);
 HTONL_FP(&tmp, &testspkt.p.xmt);
}
