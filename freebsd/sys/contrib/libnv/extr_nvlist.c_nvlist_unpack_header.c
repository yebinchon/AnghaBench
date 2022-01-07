
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvlist_header {size_t nvlh_size; size_t nvlh_descriptors; int nvlh_flags; } ;
struct TYPE_3__ {int nvl_flags; } ;
typedef TYPE_1__ nvlist_t ;
typedef int nvlhdr ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 int NV_FLAG_ALL_MASK ;
 int NV_FLAG_BIG_ENDIAN ;
 int NV_FLAG_IN_ARRAY ;
 int NV_FLAG_PUBLIC_MASK ;
 int memcpy (struct nvlist_header*,unsigned char const*,int) ;
 int nvlist_check_header (struct nvlist_header*) ;

const unsigned char *
nvlist_unpack_header(nvlist_t *nvl, const unsigned char *ptr, size_t nfds,
    bool *isbep, size_t *leftp)
{
 struct nvlist_header nvlhdr;
 int inarrayf;

 if (*leftp < sizeof(nvlhdr))
  goto fail;

 memcpy(&nvlhdr, ptr, sizeof(nvlhdr));

 if (!nvlist_check_header(&nvlhdr))
  goto fail;

 if (nvlhdr.nvlh_size != *leftp - sizeof(nvlhdr))
  goto fail;




 if (nvlhdr.nvlh_descriptors > nfds)
  goto fail;

 if ((nvlhdr.nvlh_flags & ~NV_FLAG_ALL_MASK) != 0)
  goto fail;

 inarrayf = (nvl->nvl_flags & NV_FLAG_IN_ARRAY);
 nvl->nvl_flags = (nvlhdr.nvlh_flags & NV_FLAG_PUBLIC_MASK) | inarrayf;

 ptr += sizeof(nvlhdr);
 if (isbep != ((void*)0))
  *isbep = (((int)nvlhdr.nvlh_flags & NV_FLAG_BIG_ENDIAN) != 0);
 *leftp -= sizeof(nvlhdr);

 return (ptr);
fail:
 ERRNO_SET(EINVAL);
 return (((void*)0));
}
