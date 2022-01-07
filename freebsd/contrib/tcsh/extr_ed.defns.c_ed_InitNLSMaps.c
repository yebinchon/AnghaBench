
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AsciiOnly ;
 size_t CTL_ESC (int) ;
 int * CcKeyMap ;
 int F_INSERT ;
 scalar_t__ Isprint (size_t) ;
 int NLSMapsAreInited ;
 scalar_t__ NoNLSRebind ;

void
ed_InitNLSMaps(void)
{
    int i;

    if (AsciiOnly)
 return;
    if (NoNLSRebind)
 return;
    for (i = 0200; i <= 0377; i++) {
 if (Isprint(CTL_ESC(i))) {
     CcKeyMap[CTL_ESC(i)] = F_INSERT;
 }
    }
    NLSMapsAreInited = 1;
}
