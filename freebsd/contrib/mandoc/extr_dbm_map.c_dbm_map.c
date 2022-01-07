
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int st_size; } ;


 int EFBIG ;
 int EFTYPE ;
 int INT32_MAX ;
 long long MANDOCDB_MAGIC ;
 long long MANDOCDB_VERSION ;
 int MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 long long be32toh (int const) ;
 int close (int) ;
 int dbm_base ;
 int * dbm_get (int const) ;
 int const* dbm_getint (int) ;
 int errno ;
 int fstat (int,TYPE_1__*) ;
 int ifd ;
 long long max_offset ;
 int mmap (int *,int,int ,int ,int,int ) ;
 int open (char const*,int ) ;
 TYPE_1__ st ;
 scalar_t__ strncmp (int ,char*,int) ;
 int warnx (char*,char const*,...) ;

int
dbm_map(const char *fname)
{
 int save_errno;
 const int32_t *magic;

 if ((ifd = open(fname, O_RDONLY)) == -1)
  return -1;
 if (fstat(ifd, &st) == -1)
  goto fail;
 if (st.st_size < 5) {
  warnx("dbm_map(%s): File too short", fname);
  errno = EFTYPE;
  goto fail;
 }
 if (st.st_size > INT32_MAX) {
  errno = EFBIG;
  goto fail;
 }
 if ((dbm_base = mmap(((void*)0), st.st_size, PROT_READ, MAP_SHARED,
     ifd, 0)) == MAP_FAILED)
  goto fail;
 magic = dbm_getint(0);
 if (be32toh(*magic) != MANDOCDB_MAGIC) {
  if (strncmp(dbm_base, "SQLite format 3", 15))
   warnx("dbm_map(%s): "
       "Bad initial magic %x (expected %x)",
       fname, be32toh(*magic), MANDOCDB_MAGIC);
  else
   warnx("dbm_map(%s): "
       "Obsolete format based on SQLite 3",
       fname);
  errno = EFTYPE;
  goto fail;
 }
 magic = dbm_getint(1);
 if (be32toh(*magic) != MANDOCDB_VERSION) {
  warnx("dbm_map(%s): Bad version number %d (expected %d)",
      fname, be32toh(*magic), MANDOCDB_VERSION);
  errno = EFTYPE;
  goto fail;
 }
 max_offset = be32toh(*dbm_getint(3)) + sizeof(int32_t);
 if (st.st_size != max_offset) {
  warnx("dbm_map(%s): Inconsistent file size %lld (expected %d)",
      fname, (long long)st.st_size, max_offset);
  errno = EFTYPE;
  goto fail;
 }
 if ((magic = dbm_get(*dbm_getint(3))) == ((void*)0)) {
  errno = EFTYPE;
  goto fail;
 }
 if (be32toh(*magic) != MANDOCDB_MAGIC) {
  warnx("dbm_map(%s): Bad final magic %x (expected %x)",
      fname, be32toh(*magic), MANDOCDB_MAGIC);
  errno = EFTYPE;
  goto fail;
 }
 return 0;

fail:
 save_errno = errno;
 close(ifd);
 errno = save_errno;
 return -1;
}
