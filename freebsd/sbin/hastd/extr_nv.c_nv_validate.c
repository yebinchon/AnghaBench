
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvhdr {char* nvh_name; int nvh_namesize; int nvh_type; } ;
struct nv {int nv_error; int nv_ebuf; } ;


 int EINVAL ;
 int ENOMEM ;
 unsigned char* NVH_DATA (struct nvhdr*) ;
 size_t NVH_DSIZE (struct nvhdr*) ;
 size_t NVH_HSIZE (struct nvhdr*) ;
 size_t NVH_SIZE (struct nvhdr*) ;
 int NV_CHECK (struct nv*) ;
 int NV_TYPE_FIRST ;
 int NV_TYPE_LAST ;
 int NV_TYPE_MASK ;
 int PJDLOG_ABORT (char*) ;
 int PJDLOG_ASSERT (int) ;
 unsigned char* ebuf_data (int ,size_t*) ;
 int errno ;
 size_t strlen (char*) ;

int
nv_validate(struct nv *nv, size_t *extrap)
{
 struct nvhdr *nvh;
 unsigned char *data, *ptr;
 size_t dsize, size, vsize;
 int error;

 if (nv == ((void*)0)) {
  errno = ENOMEM;
  return (-1);
 }

 NV_CHECK(nv);
 PJDLOG_ASSERT(nv->nv_error == 0);



 error = 0;
 ptr = ebuf_data(nv->nv_ebuf, &size);
 while (size > 0) {



  if (ptr[0] == '\0')
   break;




  if (size < sizeof(*nvh) + 2) {
   error = EINVAL;
   break;
  }
  nvh = (struct nvhdr *)ptr;
  if (size < NVH_HSIZE(nvh)) {
   error = EINVAL;
   break;
  }
  if (nvh->nvh_name[nvh->nvh_namesize - 1] != '\0') {
   error = EINVAL;
   break;
  }
  if (strlen(nvh->nvh_name) !=
      (size_t)(nvh->nvh_namesize - 1)) {
   error = EINVAL;
   break;
  }
  if ((nvh->nvh_type & NV_TYPE_MASK) < NV_TYPE_FIRST ||
      (nvh->nvh_type & NV_TYPE_MASK) > NV_TYPE_LAST) {
   error = EINVAL;
   break;
  }
  dsize = NVH_DSIZE(nvh);
  if (dsize == 0) {
   error = EINVAL;
   break;
  }
  if (size < NVH_SIZE(nvh)) {
   error = EINVAL;
   break;
  }
  vsize = 0;
  switch (nvh->nvh_type & NV_TYPE_MASK) {
  case 138:
  case 129:
   if (vsize == 0)
    vsize = 1;

  case 144:
  case 135:
   if (vsize == 0)
    vsize = 2;

  case 142:
  case 133:
   if (vsize == 0)
    vsize = 4;

  case 140:
  case 131:
   if (vsize == 0)
    vsize = 8;
   if (dsize != vsize) {
    error = EINVAL;
    break;
   }
   break;
  case 137:
  case 128:
   break;
  case 143:
  case 134:
   if (vsize == 0)
    vsize = 2;

  case 141:
  case 132:
   if (vsize == 0)
    vsize = 4;

  case 139:
  case 130:
   if (vsize == 0)
    vsize = 8;
   if ((dsize % vsize) != 0) {
    error = EINVAL;
    break;
   }
   break;
  case 136:
   data = NVH_DATA(nvh);
   if (data[dsize - 1] != '\0') {
    error = EINVAL;
    break;
   }
   if (strlen((char *)data) != dsize - 1) {
    error = EINVAL;
    break;
   }
   break;
  default:
   PJDLOG_ABORT("invalid condition");
  }
  if (error != 0)
   break;
  ptr += NVH_SIZE(nvh);
  size -= NVH_SIZE(nvh);
 }
 if (error != 0) {
  errno = error;
  if (nv->nv_error == 0)
   nv->nv_error = error;
  return (-1);
 }
 if (extrap != ((void*)0))
  *extrap = size;
 return (0);
}
