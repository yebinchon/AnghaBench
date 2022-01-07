
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct unwind_idx {int offset; } ;
struct search_context {int * exidx_end; int * exidx_start; scalar_t__ addr; } ;
typedef int sc ;
typedef scalar_t__ int32_t ;
typedef int * caddr_t ;


 int bzero (struct search_context*,int) ;
 int exidx_end ;
 int exidx_start ;
 scalar_t__ expand_prel31 (int ) ;
 scalar_t__ linker_file_foreach (int ,struct search_context*) ;
 int module_search ;

__attribute__((used)) static struct unwind_idx *
find_index(uint32_t addr, int search_modules)
{
 struct search_context sc;
 caddr_t idx_start, idx_end;
 unsigned int min, mid, max;
 struct unwind_idx *start;
 struct unwind_idx *item;
 int32_t prel31_addr;
 uint32_t func_addr;

 start = (struct unwind_idx *)&exidx_start;
 idx_start = (caddr_t)&exidx_start;
 idx_end = (caddr_t)&exidx_end;


 if (search_modules) {
  bzero(&sc, sizeof(sc));
  sc.addr = addr;
  if (linker_file_foreach(module_search, &sc) != 0 &&
     sc.exidx_start != ((void*)0) && sc.exidx_end != ((void*)0)) {
   start = (struct unwind_idx *)sc.exidx_start;
   idx_start = sc.exidx_start;
   idx_end = sc.exidx_end;
  }
 }

 min = 0;
 max = (idx_end - idx_start) / sizeof(struct unwind_idx);

 while (min != max) {
  mid = min + (max - min + 1) / 2;

  item = &start[mid];

  prel31_addr = expand_prel31(item->offset);
  func_addr = (uint32_t)&item->offset + prel31_addr;

  if (func_addr <= addr) {
   min = mid;
  } else {
   max = mid - 1;
  }
 }

 return &start[min];
}
