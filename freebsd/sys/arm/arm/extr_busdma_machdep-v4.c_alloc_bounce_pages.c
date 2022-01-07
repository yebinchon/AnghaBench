
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_int ;
struct bounce_zone {int free_bpages; int total_bpages; int bounce_page_list; int lowaddr; } ;
struct bounce_page {scalar_t__ vaddr; int busaddr; } ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_3__ {struct bounce_zone* bounce_zone; } ;


 int M_BOUNCE ;
 int M_BUSDMA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int STAILQ_INSERT_TAIL (int *,struct bounce_page*,int ) ;
 int bounce_lock ;
 scalar_t__ contigmalloc (int ,int ,int,unsigned long,int ,int ,int ) ;
 int free (struct bounce_page*,int ) ;
 int links ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmap_kextract (scalar_t__) ;
 int total_bpages ;

__attribute__((used)) static int
alloc_bounce_pages(bus_dma_tag_t dmat, u_int numpages)
{
 struct bounce_zone *bz;
 int count;

 bz = dmat->bounce_zone;
 count = 0;
 while (numpages > 0) {
  struct bounce_page *bpage;

  bpage = (struct bounce_page *)malloc(sizeof(*bpage), M_BUSDMA,
      M_NOWAIT | M_ZERO);

  if (bpage == ((void*)0))
   break;
  bpage->vaddr = (vm_offset_t)contigmalloc(PAGE_SIZE, M_BOUNCE,
      M_NOWAIT, 0ul, bz->lowaddr, PAGE_SIZE, 0);
  if (bpage->vaddr == 0) {
   free(bpage, M_BUSDMA);
   break;
  }
  bpage->busaddr = pmap_kextract(bpage->vaddr);
  mtx_lock(&bounce_lock);
  STAILQ_INSERT_TAIL(&bz->bounce_page_list, bpage, links);
  total_bpages++;
  bz->total_bpages++;
  bz->free_bpages++;
  mtx_unlock(&bounce_lock);
  count++;
  numpages--;
 }
 return (count);
}
