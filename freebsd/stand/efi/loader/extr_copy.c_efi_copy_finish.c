
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ stage_offset ;
 scalar_t__ staging ;
 scalar_t__ staging_end ;

void
efi_copy_finish(void)
{
 uint64_t *src, *dst, *last;

 src = (uint64_t *)(uintptr_t)staging;
 dst = (uint64_t *)(uintptr_t)(staging - stage_offset);
 last = (uint64_t *)(uintptr_t)staging_end;

 while (src < last)
  *dst++ = *src++;
}
