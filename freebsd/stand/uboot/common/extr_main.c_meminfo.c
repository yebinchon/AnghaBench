
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
struct sys_info {int dummy; } ;


 int MR_ATTR_DRAM ;
 int MR_ATTR_FLASH ;
 int MR_ATTR_SRAM ;
 int memsize (struct sys_info*,int) ;
 int panic (char*) ;
 int printf (char*,char*,int ) ;
 struct sys_info* ub_get_sys_info () ;
 char* ub_mem_type (int) ;

__attribute__((used)) static void
meminfo(void)
{
 uint64_t size;
 struct sys_info *si;
 int t[3] = { MR_ATTR_DRAM, MR_ATTR_FLASH, MR_ATTR_SRAM };
 int i;

 if ((si = ub_get_sys_info()) == ((void*)0))
  panic("could not retrieve system info");

 for (i = 0; i < 3; i++) {
  size = memsize(si, t[i]);
  if (size > 0)
   printf("%s: %juMB\n", ub_mem_type(t[i]),
       (uintmax_t)(size / 1024 / 1024));
 }
}
