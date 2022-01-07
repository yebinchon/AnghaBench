
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct nvhdr {int nvh_type; char* nvh_name; } ;
struct nv {scalar_t__ nv_error; int nv_ebuf; } ;
typedef int intmax_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;


 unsigned char* NVH_DATA (struct nvhdr*) ;
 size_t NVH_DSIZE (struct nvhdr*) ;
 size_t NVH_SIZE (struct nvhdr*) ;
 int NV_CHECK (struct nv*) ;
 int NV_ORDER_MASK ;
 int NV_ORDER_NETWORK ;
 int NV_TYPE_MASK ;
 int PJDLOG_ABORT (char*) ;
 int PJDLOG_ASSERT (int) ;
 unsigned char* ebuf_data (int ,size_t*) ;
 int errno ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 int le64toh (int ) ;
 int nv_validate (struct nv*,int *) ;
 int printf (char*,...) ;

void
nv_dump(struct nv *nv)
{
 struct nvhdr *nvh;
 unsigned char *data, *ptr;
 size_t dsize, size;
 unsigned int ii;
 bool swap;

 if (nv_validate(nv, ((void*)0)) == -1) {
  printf("error: %d\n", errno);
  return;
 }

 NV_CHECK(nv);
 PJDLOG_ASSERT(nv->nv_error == 0);

 ptr = ebuf_data(nv->nv_ebuf, &size);
 while (size > 0) {
  PJDLOG_ASSERT(size >= sizeof(*nvh) + 2);
  nvh = (struct nvhdr *)ptr;
  PJDLOG_ASSERT(size >= NVH_SIZE(nvh));
  swap = ((nvh->nvh_type & NV_ORDER_MASK) == NV_ORDER_NETWORK);
  dsize = NVH_DSIZE(nvh);
  data = NVH_DATA(nvh);
  printf("  %s", nvh->nvh_name);
  switch (nvh->nvh_type & NV_TYPE_MASK) {
  case 138:
   printf("(int8): %jd", (intmax_t)(*(int8_t *)data));
   break;
  case 129:
   printf("(uint8): %ju", (uintmax_t)(*(uint8_t *)data));
   break;
  case 144:
   printf("(int16): %jd", swap ?
       (intmax_t)le16toh(*(int16_t *)(void *)data) :
       (intmax_t)*(int16_t *)(void *)data);
   break;
  case 135:
   printf("(uint16): %ju", swap ?
       (uintmax_t)le16toh(*(uint16_t *)(void *)data) :
       (uintmax_t)*(uint16_t *)(void *)data);
   break;
  case 142:
   printf("(int32): %jd", swap ?
       (intmax_t)le32toh(*(int32_t *)(void *)data) :
       (intmax_t)*(int32_t *)(void *)data);
   break;
  case 133:
   printf("(uint32): %ju", swap ?
       (uintmax_t)le32toh(*(uint32_t *)(void *)data) :
       (uintmax_t)*(uint32_t *)(void *)data);
   break;
  case 140:
   printf("(int64): %jd", swap ?
       (intmax_t)le64toh(*(int64_t *)(void *)data) :
       (intmax_t)*(int64_t *)(void *)data);
   break;
  case 131:
   printf("(uint64): %ju", swap ?
       (uintmax_t)le64toh(*(uint64_t *)(void *)data) :
       (uintmax_t)*(uint64_t *)(void *)data);
   break;
  case 137:
   printf("(int8 array):");
   for (ii = 0; ii < dsize; ii++)
    printf(" %jd", (intmax_t)((int8_t *)data)[ii]);
   break;
  case 128:
   printf("(uint8 array):");
   for (ii = 0; ii < dsize; ii++)
    printf(" %ju", (uintmax_t)((uint8_t *)data)[ii]);
   break;
  case 143:
   printf("(int16 array):");
   for (ii = 0; ii < dsize / 2; ii++) {
    printf(" %jd", swap ?
        (intmax_t)le16toh(((int16_t *)(void *)data)[ii]) :
        (intmax_t)((int16_t *)(void *)data)[ii]);
   }
   break;
  case 134:
   printf("(uint16 array):");
   for (ii = 0; ii < dsize / 2; ii++) {
    printf(" %ju", swap ?
        (uintmax_t)le16toh(((uint16_t *)(void *)data)[ii]) :
        (uintmax_t)((uint16_t *)(void *)data)[ii]);
   }
   break;
  case 141:
   printf("(int32 array):");
   for (ii = 0; ii < dsize / 4; ii++) {
    printf(" %jd", swap ?
        (intmax_t)le32toh(((int32_t *)(void *)data)[ii]) :
        (intmax_t)((int32_t *)(void *)data)[ii]);
   }
   break;
  case 132:
   printf("(uint32 array):");
   for (ii = 0; ii < dsize / 4; ii++) {
    printf(" %ju", swap ?
        (uintmax_t)le32toh(((uint32_t *)(void *)data)[ii]) :
        (uintmax_t)((uint32_t *)(void *)data)[ii]);
   }
   break;
  case 139:
   printf("(int64 array):");
   for (ii = 0; ii < dsize / 8; ii++) {
    printf(" %ju", swap ?
        (uintmax_t)le64toh(((uint64_t *)(void *)data)[ii]) :
        (uintmax_t)((uint64_t *)(void *)data)[ii]);
   }
   break;
  case 130:
   printf("(uint64 array):");
   for (ii = 0; ii < dsize / 8; ii++) {
    printf(" %ju", swap ?
        (uintmax_t)le64toh(((uint64_t *)(void *)data)[ii]) :
        (uintmax_t)((uint64_t *)(void *)data)[ii]);
   }
   break;
  case 136:
   printf("(string): %s", (char *)data);
   break;
  default:
   PJDLOG_ABORT("invalid condition");
  }
  printf("\n");
  ptr += NVH_SIZE(nvh);
  size -= NVH_SIZE(nvh);
 }
}
