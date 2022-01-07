
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spc {unsigned char flags; unsigned char mylevel; void* val; } ;
typedef void* cc_t ;


 int NSLC ;
 unsigned char SLC_ACK ;
 unsigned char SLC_DEFAULT ;
 size_t SLC_FLAGS ;
 size_t SLC_FUNC ;
 unsigned char SLC_LEVELBITS ;
 unsigned char SLC_NOSUPPORT ;
 size_t SLC_VALUE ;
 int setconnmode (int) ;
 int slc_add_reply (int,unsigned char,void*) ;
 int slc_end_reply () ;
 int slc_start_reply () ;
 scalar_t__ slc_update () ;
 struct spc* spc_data ;

void
slc(unsigned char *cp, int len)
{
 struct spc *spcp;
 int func,level;

 slc_start_reply();

 for (; len >= 3; len -=3, cp +=3) {

  func = cp[SLC_FUNC];

  if (func == 0) {



   continue;
  }
  if (func > NSLC) {
   if ((cp[SLC_FLAGS] & SLC_LEVELBITS) != SLC_NOSUPPORT)
    slc_add_reply(func, SLC_NOSUPPORT, 0);
   continue;
  }

  spcp = &spc_data[func];

  level = cp[SLC_FLAGS]&(SLC_LEVELBITS|SLC_ACK);

  if ((cp[SLC_VALUE] == (unsigned char)spcp->val) &&
      ((level&SLC_LEVELBITS) == (spcp->flags&SLC_LEVELBITS))) {
   continue;
  }

  if (level == (SLC_DEFAULT|SLC_ACK)) {






   cp[SLC_FLAGS] &= ~SLC_ACK;
  }

  if (level == ((spcp->flags&SLC_LEVELBITS)|SLC_ACK)) {
   spcp->val = (cc_t)cp[SLC_VALUE];
   spcp->flags = cp[SLC_FLAGS];
   continue;
  }

  level &= ~SLC_ACK;

  if (level <= (spcp->mylevel&SLC_LEVELBITS)) {
   spcp->flags = cp[SLC_FLAGS]|SLC_ACK;
   spcp->val = (cc_t)cp[SLC_VALUE];
  }
  if (level == SLC_DEFAULT) {
   if ((spcp->mylevel&SLC_LEVELBITS) != SLC_DEFAULT)
    spcp->flags = spcp->mylevel;
   else
    spcp->flags = SLC_NOSUPPORT;
  }
  slc_add_reply(func, spcp->flags, spcp->val);
 }
 slc_end_reply();
 if (slc_update())
  setconnmode(1);
}
