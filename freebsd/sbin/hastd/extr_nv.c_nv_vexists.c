
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct nvhdr {int dummy; } ;
struct nv {int nv_error; } ;


 int NV_TYPE_NONE ;
 int errno ;
 struct nvhdr* nv_find (struct nv*,int ,char const*,int ) ;

__attribute__((used)) static bool
nv_vexists(struct nv *nv, const char *namefmt, va_list nameap)
{
 struct nvhdr *nvh;
 int snverror, serrno;

 if (nv == ((void*)0))
  return (0);

 serrno = errno;
 snverror = nv->nv_error;

 nvh = nv_find(nv, NV_TYPE_NONE, namefmt, nameap);

 errno = serrno;
 nv->nv_error = snverror;

 return (nvh != ((void*)0));
}
