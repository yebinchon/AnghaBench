
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spc {int flags; scalar_t__* valp; scalar_t__ val; } ;


 int NSLC ;
 int SLC_ACK ;
 struct spc* spc_data ;

int
slc_update()
{
 struct spc *spcp;
 int need_update = 0;

 for (spcp = &spc_data[1]; spcp < &spc_data[NSLC+1]; spcp++) {
  if (!(spcp->flags&SLC_ACK))
   continue;
  spcp->flags &= ~SLC_ACK;
  if (spcp->valp && (*spcp->valp != spcp->val)) {
   *spcp->valp = spcp->val;
   need_update = 1;
  }
 }
 return(need_update);
}
