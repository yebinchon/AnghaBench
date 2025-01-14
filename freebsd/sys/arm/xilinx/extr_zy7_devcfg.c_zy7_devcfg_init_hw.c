
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_devcfg_softc {int dummy; } ;


 int DEVCFG_SC_ASSERT_LOCKED (struct zy7_devcfg_softc*) ;
 int RD4 (struct zy7_devcfg_softc*,int ) ;
 int WR4 (struct zy7_devcfg_softc*,int ,int) ;
 int ZY7_DEVCFG_CTRL ;
 int ZY7_DEVCFG_CTRL_DAP_EN_MASK ;
 int ZY7_DEVCFG_CTRL_DBGEN ;
 int ZY7_DEVCFG_CTRL_NIDEN ;
 int ZY7_DEVCFG_CTRL_PCAP_MODE ;
 int ZY7_DEVCFG_CTRL_PCAP_PR ;
 int ZY7_DEVCFG_CTRL_PCFG_PROG_B ;
 int ZY7_DEVCFG_CTRL_RESVD_WR11 ;
 int ZY7_DEVCFG_CTRL_SPIDEN ;
 int ZY7_DEVCFG_CTRL_SPNIDEN ;
 int ZY7_DEVCFG_CTRL_USER_MODE ;
 int ZY7_DEVCFG_MCTRL ;
 int ZY7_DEVCFG_MCTRL_INT_PCAP_LPBK ;

__attribute__((used)) static void
zy7_devcfg_init_hw(struct zy7_devcfg_softc *sc)
{

 DEVCFG_SC_ASSERT_LOCKED(sc);


 WR4(sc, ZY7_DEVCFG_CTRL,
     ZY7_DEVCFG_CTRL_PCFG_PROG_B |
     ZY7_DEVCFG_CTRL_PCAP_PR |
     ZY7_DEVCFG_CTRL_PCAP_MODE |
     ZY7_DEVCFG_CTRL_USER_MODE |
     ZY7_DEVCFG_CTRL_RESVD_WR11 |
     ZY7_DEVCFG_CTRL_SPNIDEN |
     ZY7_DEVCFG_CTRL_SPIDEN |
     ZY7_DEVCFG_CTRL_NIDEN |
     ZY7_DEVCFG_CTRL_DBGEN |
     ZY7_DEVCFG_CTRL_DAP_EN_MASK);


 WR4(sc, ZY7_DEVCFG_MCTRL, RD4(sc, ZY7_DEVCFG_MCTRL) &
     ~ZY7_DEVCFG_MCTRL_INT_PCAP_LPBK);
}
