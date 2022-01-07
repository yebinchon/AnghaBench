
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idrent {int dummy; } ;
struct idr {int pool_size; struct idrent* idrent_pool; } ;
struct archive_write {int archive; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 void* realloc (struct idrent*,int) ;

__attribute__((used)) static int
idr_ensure_poolsize(struct archive_write *a, struct idr *idr,
    int cnt)
{

 if (idr->pool_size < cnt) {
  void *p;
  const int bk = (1 << 7) - 1;
  int psize;

  psize = (cnt + bk) & ~bk;
  p = realloc(idr->idrent_pool, sizeof(struct idrent) * psize);
  if (p == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory");
   return (ARCHIVE_FATAL);
  }
  idr->idrent_pool = (struct idrent *)p;
  idr->pool_size = psize;
 }
 return (ARCHIVE_OK);
}
