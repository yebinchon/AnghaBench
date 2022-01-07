
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nvlist_header {size_t nvlh_size; int nvlh_descriptors; int nvlh_flags; int nvlh_version; int nvlh_magic; } ;
struct TYPE_5__ {int nvl_flags; } ;
typedef TYPE_1__ nvlist_t ;
typedef int nvlhdr ;


 int NVLIST_ASSERT (TYPE_1__ const*) ;
 int NVLIST_HEADER_MAGIC ;
 int NVLIST_HEADER_VERSION ;
 int NV_FLAG_BIG_ENDIAN ;
 int PJDLOG_ASSERT (int) ;
 int memcpy (unsigned char*,struct nvlist_header*,int) ;
 int nvlist_ndescriptors (TYPE_1__ const*) ;

__attribute__((used)) static unsigned char *
nvlist_pack_header(const nvlist_t *nvl, unsigned char *ptr, size_t *leftp)
{
 struct nvlist_header nvlhdr;

 NVLIST_ASSERT(nvl);

 nvlhdr.nvlh_magic = NVLIST_HEADER_MAGIC;
 nvlhdr.nvlh_version = NVLIST_HEADER_VERSION;
 nvlhdr.nvlh_flags = nvl->nvl_flags;

 nvlhdr.nvlh_flags |= NV_FLAG_BIG_ENDIAN;

 nvlhdr.nvlh_descriptors = nvlist_ndescriptors(nvl);
 nvlhdr.nvlh_size = *leftp - sizeof(nvlhdr);
 PJDLOG_ASSERT(*leftp >= sizeof(nvlhdr));
 memcpy(ptr, &nvlhdr, sizeof(nvlhdr));
 ptr += sizeof(nvlhdr);
 *leftp -= sizeof(nvlhdr);

 return (ptr);
}
