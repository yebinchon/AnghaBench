
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {scalar_t__ nv_magic; struct ebuf* nv_ebuf; scalar_t__ nv_error; } ;
struct ebuf {int dummy; } ;


 scalar_t__ NV_MAGIC ;
 int PJDLOG_ASSERT (int ) ;
 int ebuf_del_tail (struct ebuf*,size_t) ;
 int errno ;
 int free (struct nv*) ;
 struct nv* malloc (int) ;
 int nv_validate (struct nv*,size_t*) ;

struct nv *
nv_ntoh(struct ebuf *eb)
{
 struct nv *nv;
 size_t extra;
 int rerrno;

 PJDLOG_ASSERT(eb != ((void*)0));

 nv = malloc(sizeof(*nv));
 if (nv == ((void*)0))
  return (((void*)0));
 nv->nv_error = 0;
 nv->nv_ebuf = eb;
 nv->nv_magic = NV_MAGIC;

 if (nv_validate(nv, &extra) == -1) {
  rerrno = errno;
  nv->nv_magic = 0;
  free(nv);
  errno = rerrno;
  return (((void*)0));
 }



 ebuf_del_tail(eb, extra);

 return (nv);
}
