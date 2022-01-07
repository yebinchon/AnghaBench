
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct nvhdr {int nvh_type; int nvh_dsize; } ;


 unsigned char* NVH_DATA (struct nvhdr*) ;
 int NV_ORDER_HOST ;
 int NV_ORDER_MASK ;
 int NV_ORDER_NETWORK ;
 int NV_TYPE_MASK ;
 int PJDLOG_ABORT (char*) ;
 int htole16 (int ) ;
 void* htole32 (int) ;
 int htole64 (int ) ;
 int le16toh (int ) ;
 void* le32toh (int) ;
 int le64toh (int ) ;

__attribute__((used)) static void
nv_swap(struct nvhdr *nvh, bool tohost)
{
 unsigned char *data, *end, *p;
 size_t vsize;

 data = NVH_DATA(nvh);
 if (tohost) {
  if ((nvh->nvh_type & NV_ORDER_MASK) == NV_ORDER_HOST)
   return;
  nvh->nvh_dsize = le32toh(nvh->nvh_dsize);
  end = data + nvh->nvh_dsize;
  nvh->nvh_type &= ~NV_ORDER_MASK;
  nvh->nvh_type |= NV_ORDER_HOST;
 } else {
  if ((nvh->nvh_type & NV_ORDER_MASK) == NV_ORDER_NETWORK)
   return;
  end = data + nvh->nvh_dsize;
  nvh->nvh_dsize = htole32(nvh->nvh_dsize);
  nvh->nvh_type &= ~NV_ORDER_MASK;
  nvh->nvh_type |= NV_ORDER_NETWORK;
 }

 vsize = 0;

 switch (nvh->nvh_type & NV_TYPE_MASK) {
 case 138:
 case 129:
 case 137:
 case 128:
  break;
 case 144:
 case 135:
 case 143:
 case 134:
  if (vsize == 0)
   vsize = 2;

 case 142:
 case 133:
 case 141:
 case 132:
  if (vsize == 0)
   vsize = 4;

 case 140:
 case 131:
 case 139:
 case 130:
  if (vsize == 0)
   vsize = 8;
  for (p = data; p < end; p += vsize) {
   if (tohost) {
    switch (vsize) {
    case 2:
     *(uint16_t *)(void *)p =
         le16toh(*(uint16_t *)(void *)p);
     break;
    case 4:
     *(uint32_t *)(void *)p =
         le32toh(*(uint32_t *)(void *)p);
     break;
    case 8:
     *(uint64_t *)(void *)p =
         le64toh(*(uint64_t *)(void *)p);
     break;
    default:
     PJDLOG_ABORT("invalid condition");
    }
   } else {
    switch (vsize) {
    case 2:
     *(uint16_t *)(void *)p =
         htole16(*(uint16_t *)(void *)p);
     break;
    case 4:
     *(uint32_t *)(void *)p =
         htole32(*(uint32_t *)(void *)p);
     break;
    case 8:
     *(uint64_t *)(void *)p =
         htole64(*(uint64_t *)(void *)p);
     break;
    default:
     PJDLOG_ABORT("invalid condition");
    }
   }
  }
  break;
 case 136:
  break;
 default:
  PJDLOG_ABORT("unrecognized type");
 }
}
