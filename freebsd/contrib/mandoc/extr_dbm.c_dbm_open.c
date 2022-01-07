
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct macro {int dummy; } ;
typedef scalar_t__ int32_t ;


 int EFTYPE ;
 scalar_t__ MACRO_MAX ;
 scalar_t__ be32toh (scalar_t__ const) ;
 scalar_t__* dbm_get (scalar_t__ const) ;
 scalar_t__ const* dbm_getint (int) ;
 int dbm_map (char const*) ;
 int dbm_unmap () ;
 int errno ;
 struct macro** macros ;
 scalar_t__ npages ;
 scalar_t__* nvals ;
 struct page* pages ;
 int warnx (char*,char const*,...) ;

int
dbm_open(const char *fname)
{
 const int32_t *mp, *ep;
 int32_t im;

 if (dbm_map(fname) == -1)
  return -1;

 if ((npages = be32toh(*dbm_getint(4))) < 0) {
  warnx("dbm_open(%s): Invalid number of pages: %d",
      fname, npages);
  goto fail;
 }
 pages = (struct page *)dbm_getint(5);

 if ((mp = dbm_get(*dbm_getint(2))) == ((void*)0)) {
  warnx("dbm_open(%s): Invalid offset of macros array", fname);
  goto fail;
 }
 if (be32toh(*mp) != MACRO_MAX) {
  warnx("dbm_open(%s): Invalid number of macros: %d",
      fname, be32toh(*mp));
  goto fail;
 }
 for (im = 0; im < MACRO_MAX; im++) {
  if ((ep = dbm_get(*++mp)) == ((void*)0)) {
   warnx("dbm_open(%s): Invalid offset of macro %d",
       fname, im);
   goto fail;
  }
  nvals[im] = be32toh(*ep);
  macros[im] = (struct macro *)++ep;
 }
 return 0;

fail:
 dbm_unmap();
 errno = EFTYPE;
 return -1;
}
