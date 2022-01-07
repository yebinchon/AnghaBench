
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vmap {unsigned long tstart; unsigned long dstart; scalar_t__ toffs; scalar_t__ dend; scalar_t__ tend; } ;
struct TYPE_6__ {scalar_t__ ldinfo_datasize; scalar_t__ ldinfo_dataorg; scalar_t__ ldinfo_textsize; scalar_t__ ldinfo_textorg; } ;
struct TYPE_5__ {scalar_t__ ldinfo_datasize; scalar_t__ ldinfo_dataorg; scalar_t__ ldinfo_textsize; scalar_t__ ldinfo_textorg; } ;
struct TYPE_7__ {TYPE_2__ l32; TYPE_1__ l64; } ;
typedef TYPE_3__ LdInfo ;
typedef void* CORE_ADDR ;



__attribute__((used)) static void
vmap_secs (struct vmap *vp, LdInfo *ldi, int arch64)
{
  if (arch64)
    {
      vp->tstart = (CORE_ADDR) ldi->l64.ldinfo_textorg;
      vp->tend = vp->tstart + ldi->l64.ldinfo_textsize;
      vp->dstart = (CORE_ADDR) ldi->l64.ldinfo_dataorg;
      vp->dend = vp->dstart + ldi->l64.ldinfo_datasize;
    }
  else
    {
      vp->tstart = (unsigned long) ldi->l32.ldinfo_textorg;
      vp->tend = vp->tstart + ldi->l32.ldinfo_textsize;
      vp->dstart = (unsigned long) ldi->l32.ldinfo_dataorg;
      vp->dend = vp->dstart + ldi->l32.ldinfo_datasize;
    }





  vp->tstart += vp->toffs;
}
