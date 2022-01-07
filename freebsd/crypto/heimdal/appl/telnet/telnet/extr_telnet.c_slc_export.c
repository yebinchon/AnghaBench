
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spc {scalar_t__ mylevel; scalar_t__ val; scalar_t__ flags; scalar_t__* valp; } ;
typedef scalar_t__ cc_t ;


 int NSLC ;
 scalar_t__ SLC_NOSUPPORT ;
 int TerminalDefaultChars () ;
 scalar_t__ _POSIX_VDISABLE ;
 int setconnmode (int) ;
 int slc_add_reply (int,scalar_t__,scalar_t__) ;
 int slc_end_reply () ;
 int slc_start_reply () ;
 int slc_update () ;
 struct spc* spc_data ;

void
slc_export()
{
    struct spc *spcp;

    TerminalDefaultChars();

    slc_start_reply();
    for (spcp = &spc_data[1]; spcp < &spc_data[NSLC+1]; spcp++) {
 if (spcp->mylevel != SLC_NOSUPPORT) {
     if (spcp->val == (cc_t)(_POSIX_VDISABLE))
  spcp->flags = SLC_NOSUPPORT;
     else
  spcp->flags = spcp->mylevel;
     if (spcp->valp)
  spcp->val = *spcp->valp;
     slc_add_reply(spcp - spc_data, spcp->flags, spcp->val);
 }
    }
    slc_end_reply();
    slc_update();
    setconnmode(1);
}
