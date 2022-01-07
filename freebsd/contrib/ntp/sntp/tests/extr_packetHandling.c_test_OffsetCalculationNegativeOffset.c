
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct pkt {int precision; int xmt; int rec; int org; int reftime; void* rootdisp; void* rootdelay; } ;
struct TYPE_5__ {unsigned long l_ui; unsigned long l_uf; } ;
typedef TYPE_1__ l_fp ;


 int DTOUFP (double) ;
 int HTONL_FP (TYPE_1__*,int *) ;
 void* HTONS_FP (int ) ;
 scalar_t__ JAN_1970 ;
 int LEN_PKT_NOMAC ;
 int TEST_ASSERT_EQUAL_DOUBLE (double,double) ;
 int TSTOTV (TYPE_1__*,struct timeval*) ;
 int ULOGTOD (int) ;
 int get_systime (TYPE_1__*) ;
 int offset_calculation (struct pkt*,int ,struct timeval*,double*,double*,double*) ;

void
test_OffsetCalculationNegativeOffset(void)
{
 struct pkt rpkt;
 l_fp reftime, tmp;
 struct timeval dst;
 double offset, precision, synch_distance;

 rpkt.precision = -1;
 rpkt.rootdelay = HTONS_FP(DTOUFP(0.5));
 rpkt.rootdisp = HTONS_FP(DTOUFP(0.5));


 get_systime(&reftime);
 HTONL_FP(&reftime, &rpkt.reftime);


 tmp.l_ui = 1000000001UL;
 tmp.l_uf = 0UL;
 HTONL_FP(&tmp, &rpkt.org);


 tmp.l_ui = 1000000000UL;
 tmp.l_uf = 2147483648UL;
 HTONL_FP(&tmp, &rpkt.rec);


 tmp.l_ui = 1000000001UL;
 tmp.l_uf = 2147483648UL;
 HTONL_FP(&tmp, &rpkt.xmt);


 tmp.l_ui = 1000000003UL;
 tmp.l_uf = 0UL;

 TSTOTV(&tmp, &dst);
 dst.tv_sec -= JAN_1970;

 offset_calculation(&rpkt, LEN_PKT_NOMAC, &dst, &offset, &precision, &synch_distance);

 TEST_ASSERT_EQUAL_DOUBLE(-1, offset);
 TEST_ASSERT_EQUAL_DOUBLE(1. / ULOGTOD(1), precision);
 TEST_ASSERT_EQUAL_DOUBLE(1.3333483333333334, synch_distance);
}
