
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bus_size_t ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_6__ {int ds_addr; int ds_len; } ;
typedef TYPE_2__ bus_dma_segment_t ;
typedef int bus_addr_t ;
struct TYPE_5__ {int boundary; int maxsegsz; int nsegments; } ;



__attribute__((used)) static int
_bus_dmamap_addseg(bus_dma_tag_t dmat, bus_dmamap_t map, bus_addr_t curaddr,
    bus_size_t sgsize, bus_dma_segment_t *segs, int *segp)
{
 bus_addr_t baddr, bmask;
 int seg;




 bmask = ~(dmat->boundary - 1);
 if (dmat->boundary > 0) {
  baddr = (curaddr + dmat->boundary) & bmask;
  if (sgsize > (baddr - curaddr))
   sgsize = (baddr - curaddr);
 }





 seg = *segp;
 if (seg == -1) {
  seg = 0;
  segs[seg].ds_addr = curaddr;
  segs[seg].ds_len = sgsize;
 } else {
  if (curaddr == segs[seg].ds_addr + segs[seg].ds_len &&
      (segs[seg].ds_len + sgsize) <= dmat->maxsegsz &&
      (dmat->boundary == 0 ||
      (segs[seg].ds_addr & bmask) == (curaddr & bmask)))
   segs[seg].ds_len += sgsize;
  else {
   if (++seg >= dmat->nsegments)
    return (0);
   segs[seg].ds_addr = curaddr;
   segs[seg].ds_len = sgsize;
  }
 }
 *segp = seg;
 return (sgsize);
}
