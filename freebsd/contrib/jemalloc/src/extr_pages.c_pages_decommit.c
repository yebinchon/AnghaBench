
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pages_commit_impl (void*,size_t,int) ;

bool
pages_decommit(void *addr, size_t size) {
 return pages_commit_impl(addr, size, 0);
}
