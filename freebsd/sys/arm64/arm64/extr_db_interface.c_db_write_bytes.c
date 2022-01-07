
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef void* jmp_buf ;


 int cpu_dcache_wb_range (scalar_t__,int ) ;
 int cpu_icache_sync_range (scalar_t__,int ) ;
 int dsb (int ) ;
 int ish ;
 void* kdb_jmpbuf (void*) ;
 int setjmp (void*) ;

int
db_write_bytes(vm_offset_t addr, size_t size, char *data)
{
 jmp_buf jb;
 void *prev_jb;
 char *dst;
 int ret;

 prev_jb = kdb_jmpbuf(jb);
 ret = setjmp(jb);
 if (ret == 0) {
  dst = (char *)addr;
  while (size-- > 0)
   *dst++ = *data++;

  dsb(ish);


  cpu_dcache_wb_range(addr, (vm_size_t)size);
  cpu_icache_sync_range(addr, (vm_size_t)size);
 }
 (void)kdb_jmpbuf(prev_jb);

 return (ret);
}
