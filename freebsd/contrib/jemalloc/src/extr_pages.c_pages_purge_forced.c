
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_DONTNEED ;
 void* PAGE_ADDR2BASE (void*) ;
 size_t PAGE_CEILING (size_t) ;
 int assert (int) ;
 scalar_t__ madvise (void*,size_t,int ) ;
 int not_reached () ;
 int pages_can_purge_forced ;
 int pages_commit (void*,size_t) ;

bool
pages_purge_forced(void *addr, size_t size) {
 assert(PAGE_ADDR2BASE(addr) == addr);
 assert(PAGE_CEILING(size) == size);

 if (!pages_can_purge_forced) {
  return 1;
 }
 not_reached();

}
