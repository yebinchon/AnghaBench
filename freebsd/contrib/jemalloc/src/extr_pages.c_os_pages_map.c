
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ALIGNMENT_ADDR2BASE (void*,int ) ;
 size_t ALIGNMENT_CEILING (size_t,int ) ;
 void* MAP_FAILED ;
 int MEM_COMMIT ;
 int MEM_RESERVE ;
 int PAGES_PROT_COMMIT ;
 int PAGES_PROT_DECOMMIT ;
 int PAGE_READWRITE ;
 void* VirtualAlloc (void*,size_t,int,int ) ;
 int assert (int) ;
 void* mmap (void*,size_t,int,int ,int,int ) ;
 int mmap_flags ;
 scalar_t__ os_overcommits ;
 int os_page ;
 int os_pages_unmap (void*,size_t) ;

__attribute__((used)) static void *
os_pages_map(void *addr, size_t size, size_t alignment, bool *commit) {
 assert(ALIGNMENT_ADDR2BASE(addr, os_page) == addr);
 assert(ALIGNMENT_CEILING(size, os_page) == size);
 assert(size != 0);

 if (os_overcommits) {
  *commit = 1;
 }

 void *ret;
 {
  int prot = *commit ? PAGES_PROT_COMMIT : PAGES_PROT_DECOMMIT;

  ret = mmap(addr, size, prot, mmap_flags, -1, 0);
 }
 assert(ret != ((void*)0));

 if (ret == MAP_FAILED) {
  ret = ((void*)0);
 } else if (addr != ((void*)0) && ret != addr) {



  os_pages_unmap(ret, size);
  ret = ((void*)0);
 }

 assert(ret == ((void*)0) || (addr == ((void*)0) && ret != addr) || (addr != ((void*)0) &&
     ret == addr));
 return ret;
}
