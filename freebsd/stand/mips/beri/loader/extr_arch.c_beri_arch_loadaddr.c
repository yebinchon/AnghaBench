
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int ;


 int CACHE_LINE_SIZE ;
 scalar_t__ LOAD_ELF ;
 int PAGE_SIZE ;
 int roundup2 (int ,int ) ;

__attribute__((used)) static uint64_t
beri_arch_loadaddr(u_int type, void *data, uint64_t addr)
{
 uint64_t align;


 align = (type == LOAD_ELF) ? PAGE_SIZE : CACHE_LINE_SIZE;
 return (roundup2(addr, align));
}
