
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int memset (char*,int,int ) ;

void
msr_bitmap_initialize(char *bitmap)
{

 memset(bitmap, 0xff, PAGE_SIZE);
}
