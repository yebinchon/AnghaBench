
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct aac_softc {int dummy; } ;
struct aac_sge_ieee1212 {int length; scalar_t__ addrLow; scalar_t__ flags; int addrHigh; } ;
struct aac_raw_io2 {int sgeCnt; int sgeNominalSize; int flags; struct aac_sge_ieee1212* sge; } ;


 int M_AACRAIDBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int RIO2_SGL_CONFORMANT ;
 int free (struct aac_sge_ieee1212*,int ) ;
 struct aac_sge_ieee1212* malloc (int,int ,int) ;

__attribute__((used)) static int
aac_convert_sgraw2(struct aac_softc *sc, struct aac_raw_io2 *raw,
       int pages, int nseg, int nseg_new)
{
 struct aac_sge_ieee1212 *sge;
 int i, j, pos;
 u_int32_t addr_low;

 sge = malloc(nseg_new * sizeof(struct aac_sge_ieee1212),
  M_AACRAIDBUF, M_NOWAIT|M_ZERO);
 if (sge == ((void*)0))
  return nseg;

 for (i = 1, pos = 1; i < nseg - 1; ++i) {
  for (j = 0; j < raw->sge[i].length / (pages*PAGE_SIZE); ++j) {
   addr_low = raw->sge[i].addrLow + j * pages * PAGE_SIZE;
   sge[pos].addrLow = addr_low;
   sge[pos].addrHigh = raw->sge[i].addrHigh;
   if (addr_low < raw->sge[i].addrLow)
    sge[pos].addrHigh++;
   sge[pos].length = pages * PAGE_SIZE;
   sge[pos].flags = 0;
   pos++;
  }
 }
 sge[pos] = raw->sge[nseg-1];
 for (i = 1; i < nseg_new; ++i)
  raw->sge[i] = sge[i];

 free(sge, M_AACRAIDBUF);
 raw->sgeCnt = nseg_new;
 raw->flags |= RIO2_SGL_CONFORMANT;
 raw->sgeNominalSize = pages * PAGE_SIZE;
 return nseg_new;
}
