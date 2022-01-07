
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spc {scalar_t__* valp; scalar_t__ val; int flags; int mylevel; } ;
typedef scalar_t__ cc_t ;


 int NSLC ;
 int SLC_NOSUPPORT ;
 scalar_t__ _POSIX_VDISABLE ;
 int setconnmode (int) ;
 int slc_add_reply (int,int ,scalar_t__) ;
 int slc_end_reply () ;
 int slc_start_reply () ;
 struct spc* spc_data ;

void
slc_check(void)
{
    struct spc *spcp;

    slc_start_reply();
    for (spcp = &spc_data[1]; spcp < &spc_data[NSLC+1]; spcp++) {
 if (spcp->valp && spcp->val != *spcp->valp) {
     spcp->val = *spcp->valp;
     if (spcp->val == (cc_t)(_POSIX_VDISABLE))
  spcp->flags = SLC_NOSUPPORT;
     else
  spcp->flags = spcp->mylevel;
     slc_add_reply(spcp - spc_data, spcp->flags, spcp->val);
 }
    }
    slc_end_reply();
    setconnmode(1);
}
