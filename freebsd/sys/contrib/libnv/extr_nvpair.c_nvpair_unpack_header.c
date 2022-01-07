
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvpair_header {scalar_t__ nvph_type; size_t nvph_namesize; size_t nvph_datasize; int nvph_nitems; } ;
typedef int nvphdr ;
struct TYPE_3__ {scalar_t__ nvp_type; size_t nvp_datasize; int nvp_nitems; scalar_t__ nvp_data; struct nvpair_header* nvp_name; } ;
typedef TYPE_1__ nvpair_t ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 size_t NV_NAME_MAX ;
 scalar_t__ NV_TYPE_FIRST ;
 scalar_t__ NV_TYPE_LAST ;
 scalar_t__ NV_TYPE_NVLIST_ARRAY_NEXT ;
 scalar_t__ NV_TYPE_NVLIST_UP ;
 size_t be16toh (size_t) ;
 size_t be64toh (size_t) ;
 size_t le16toh (size_t) ;
 size_t le64toh (size_t) ;
 int memcpy (struct nvpair_header*,unsigned char const*,int) ;
 size_t strnlen (char const*,int) ;

const unsigned char *
nvpair_unpack_header(bool isbe, nvpair_t *nvp, const unsigned char *ptr,
    size_t *leftp)
{
 struct nvpair_header nvphdr;

 if (*leftp < sizeof(nvphdr))
  goto fail;

 memcpy(&nvphdr, ptr, sizeof(nvphdr));
 ptr += sizeof(nvphdr);
 *leftp -= sizeof(nvphdr);





 if (nvphdr.nvph_type > NV_TYPE_LAST &&
     nvphdr.nvph_type != NV_TYPE_NVLIST_UP &&
     nvphdr.nvph_type != NV_TYPE_NVLIST_ARRAY_NEXT) {
  goto fail;
 }


 if (!isbe) {
  nvphdr.nvph_namesize = le16toh(nvphdr.nvph_namesize);
  nvphdr.nvph_datasize = le64toh(nvphdr.nvph_datasize);
 }







 if (nvphdr.nvph_namesize > NV_NAME_MAX)
  goto fail;
 if (*leftp < nvphdr.nvph_namesize)
  goto fail;
 if (nvphdr.nvph_namesize < 1)
  goto fail;
 if (strnlen((const char *)ptr, nvphdr.nvph_namesize) !=
     (size_t)(nvphdr.nvph_namesize - 1)) {
  goto fail;
 }

 memcpy(nvp->nvp_name, ptr, nvphdr.nvph_namesize);
 ptr += nvphdr.nvph_namesize;
 *leftp -= nvphdr.nvph_namesize;

 if (*leftp < nvphdr.nvph_datasize)
  goto fail;

 nvp->nvp_type = nvphdr.nvph_type;
 nvp->nvp_data = 0;
 nvp->nvp_datasize = nvphdr.nvph_datasize;
 nvp->nvp_nitems = nvphdr.nvph_nitems;

 return (ptr);
fail:
 ERRNO_SET(EINVAL);
 return (((void*)0));
}
