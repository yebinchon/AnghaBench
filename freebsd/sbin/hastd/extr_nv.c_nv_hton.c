
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvhdr {int dummy; } ;
struct nv {scalar_t__ nv_error; struct ebuf* nv_ebuf; } ;
struct ebuf {int dummy; } ;


 size_t NVH_SIZE (struct nvhdr*) ;
 int NV_CHECK (struct nv*) ;
 int PJDLOG_ASSERT (int) ;
 unsigned char* ebuf_data (struct ebuf*,size_t*) ;
 int nv_swap (struct nvhdr*,int) ;

struct ebuf *
nv_hton(struct nv *nv)
{
 struct nvhdr *nvh;
 unsigned char *ptr;
 size_t size;

 NV_CHECK(nv);
 PJDLOG_ASSERT(nv->nv_error == 0);

 ptr = ebuf_data(nv->nv_ebuf, &size);
 while (size > 0) {




  PJDLOG_ASSERT(size >= sizeof(*nvh) + 2);
  nvh = (struct nvhdr *)ptr;
  PJDLOG_ASSERT(NVH_SIZE(nvh) <= size);
  nv_swap(nvh, 0);
  ptr += NVH_SIZE(nvh);
  size -= NVH_SIZE(nvh);
 }

 return (nv->nv_ebuf);
}
