
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pnpinfo {int dummy; } ;


 int CONFIG_CONTROL ;
 int SERIAL_ISOLATION ;
 int SET_CSN ;
 int SET_RD_DATA ;
 int WAKE ;
 int _PNP_ADDRESS ;
 int _PNP_ID_LEN ;
 int delay (int) ;
 scalar_t__ isapnp_get_serial (int *) ;
 int isapnp_readport ;
 scalar_t__ isapnp_scan_resdata (struct pnpinfo*) ;
 int isapnp_send_Initiation_LFSR () ;
 int isapnp_write (int ,int) ;
 int outb (int ,int ) ;
 int pnp_addident (struct pnpinfo*,int ) ;
 int pnp_addinfo (struct pnpinfo*) ;
 struct pnpinfo* pnp_allocinfo () ;
 int pnp_eisaformat (int *) ;
 int pnp_freeinfo (struct pnpinfo*) ;

__attribute__((used)) static int
isapnp_isolation_protocol(void)
{
    int csn;
    struct pnpinfo *pi;
    uint8_t cardid[_PNP_ID_LEN];
    int ndevs;

    isapnp_send_Initiation_LFSR();
    ndevs = 0;

    isapnp_write(CONFIG_CONTROL, 0x04);

    for (csn = 1; ; csn++) {

 isapnp_write(WAKE, 0);
 isapnp_write(SET_RD_DATA, (isapnp_readport >> 2));
 outb(_PNP_ADDRESS, SERIAL_ISOLATION);
 delay(1000);

 if (isapnp_get_serial(cardid)) {
     isapnp_write(SET_CSN, csn);
     pi = pnp_allocinfo();
     ndevs++;
     pnp_addident(pi, pnp_eisaformat(cardid));

     if (isapnp_scan_resdata(pi)) {
  pnp_freeinfo(pi);
     } else {
  pnp_addinfo(pi);
     }
 } else {
     break;
 }
    }

    while (--csn > 0) {
 isapnp_send_Initiation_LFSR();
 isapnp_write(WAKE, csn);
 isapnp_write(CONFIG_CONTROL, 0x02);
 delay(1000);
 csn--;
    }
    return(ndevs);
}
