
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct preloaded_file {int dummy; } ;
struct bios_smap {int base; int length; void* type; } ;


 int CALLBACK (int ,int*,int*) ;
 int GB ;
 int MODINFOMD_SMAP ;
 void* SMAP_TYPE_MEMORY ;
 int file_addmetadata (struct preloaded_file*,int ,int,struct bios_smap*) ;
 int getmem ;

void
bios_addsmapdata(struct preloaded_file *kfp)
{
 uint64_t lowmem, highmem;
 int smapnum, len;
 struct bios_smap smap[3], *sm;

 CALLBACK(getmem, &lowmem, &highmem);

 sm = &smap[0];

 sm->base = 0;
 sm->length = 640 * 1024;
 sm->type = SMAP_TYPE_MEMORY;
 sm++;

 sm->base = 0x100000;
 sm->length = lowmem - 0x100000;
 sm->type = SMAP_TYPE_MEMORY;
 sm++;

 smapnum = 2;

        if (highmem != 0) {
                sm->base = 4 * GB;
                sm->length = highmem;
                sm->type = SMAP_TYPE_MEMORY;
  smapnum++;
        }

        len = smapnum * sizeof(struct bios_smap);
        file_addmetadata(kfp, MODINFOMD_SMAP, len, &smap[0]);
}
