
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BindArrowKeys () ;
 int * CcAltMap ;
 int * CcKeyMap ;
 int * CcViCmdMap ;
 int * CcViMap ;
 int NT_NUM_KEYS ;
 int ResetArrowKeys () ;
 int ResetXmap () ;
 int STRvimode ;
 int VImode ;
 int ed_InitMetaBindings () ;
 int ed_InitNLSMaps () ;
 int setNS (int ) ;
 int update_wordchars () ;

void
ed_InitVIMaps(void)
{
    int i;

    VImode = 1;
    setNS(STRvimode);
    update_wordchars();

    ResetXmap();
    for (i = 0; i < NT_NUM_KEYS; i++) {
 CcKeyMap[i] = CcViMap[i];
 CcAltMap[i] = CcViCmdMap[i];
    }
    ed_InitMetaBindings();
    ed_InitNLSMaps();
    ResetArrowKeys();
    BindArrowKeys();
}
