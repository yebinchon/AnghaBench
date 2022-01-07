
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct nvhdr {int nvh_type; int nvh_name; } ;
struct nv {scalar_t__ nv_error; int nv_ebuf; } ;
typedef int name ;


 void* EINVAL ;
 void* ENOENT ;
 void* ENOMEM ;
 size_t NVH_SIZE (struct nvhdr*) ;
 int NV_CHECK (struct nv*) ;
 int NV_TYPE_MASK ;
 int NV_TYPE_NONE ;
 int PJDLOG_ASSERT (int) ;
 unsigned char* ebuf_data (int ,size_t*) ;
 void* errno ;
 int nv_swap (struct nvhdr*,int) ;
 scalar_t__ strcmp (int ,char*) ;
 size_t vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static struct nvhdr *
nv_find(struct nv *nv, int type, const char *namefmt, va_list nameap)
{
 char name[255];
 struct nvhdr *nvh;
 unsigned char *ptr;
 size_t size, namesize;

 if (nv == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }

 NV_CHECK(nv);

 namesize = vsnprintf(name, sizeof(name), namefmt, nameap);
 PJDLOG_ASSERT(namesize > 0 && namesize < sizeof(name));
 namesize++;

 ptr = ebuf_data(nv->nv_ebuf, &size);
 while (size > 0) {
  PJDLOG_ASSERT(size >= sizeof(*nvh) + 2);
  nvh = (struct nvhdr *)ptr;
  PJDLOG_ASSERT(size >= NVH_SIZE(nvh));
  nv_swap(nvh, 1);
  if (strcmp(nvh->nvh_name, name) == 0) {
   if (type != NV_TYPE_NONE &&
       (nvh->nvh_type & NV_TYPE_MASK) != type) {
    errno = EINVAL;
    if (nv->nv_error == 0)
     nv->nv_error = EINVAL;
    return (((void*)0));
   }
   return (nvh);
  }
  ptr += NVH_SIZE(nvh);
  size -= NVH_SIZE(nvh);
 }
 errno = ENOENT;
 if (nv->nv_error == 0)
  nv->nv_error = ENOENT;
 return (((void*)0));
}
