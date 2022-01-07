
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 void* x86bios_get_pages (int ,int) ;

void *
x86bios_offset(uint32_t offset)
{

 return (x86bios_get_pages(offset, 1));
}
