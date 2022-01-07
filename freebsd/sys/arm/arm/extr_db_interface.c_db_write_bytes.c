
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_int ;


 int db_printf (char*,char*) ;
 scalar_t__ db_validate_address (int ) ;
 int icache_sync (int,size_t) ;
 int tlb_flush_all () ;

int
db_write_bytes(vm_offset_t addr, size_t size, char *data)
{
 char *dst;
 size_t loop;

 dst = (char *)addr;
 if (db_validate_address((u_int)dst)) {
  db_printf("address %p is invalid\n", dst);
  return (0);
 }

 if (size == 4 && (addr & 3) == 0 && ((uintptr_t)data & 3) == 0)
  *((int*)dst) = *((int*)data);
 else
 if (size == 2 && (addr & 1) == 0 && ((uintptr_t)data & 1) == 0)
  *((short*)dst) = *((short*)data);
 else {
  loop = size;
  while (loop-- > 0) {
   if (db_validate_address((u_int)dst)) {
    db_printf("address %p is invalid\n", dst);
    return (-1);
   }
   *dst++ = *data++;
  }
 }


 icache_sync(addr, size);


 tlb_flush_all();
 return (0);
}
