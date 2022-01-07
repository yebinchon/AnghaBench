
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; int st_mode; } ;
typedef int UT_string ;


 unsigned char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int S_ISREG (int ) ;
 int close (int) ;
 int errno ;
 int open (unsigned char const*,int ) ;
 int stat (unsigned char const*,struct stat*) ;
 int strerror (int ) ;
 int ucl_create_err (int **,char*,unsigned char const*,int ) ;
 unsigned char* ucl_mmap (int *,size_t,int ,int ,int,int ) ;

bool
ucl_fetch_file (const unsigned char *filename, unsigned char **buf, size_t *buflen,
  UT_string **err, bool must_exist)
{
 int fd;
 struct stat st;

 if (stat (filename, &st) == -1 || !S_ISREG (st.st_mode)) {
  if (must_exist) {
   ucl_create_err (err, "cannot stat file %s: %s",
     filename, strerror (errno));
  }
  return 0;
 }
 if (st.st_size == 0) {

  *buf = ((void*)0);
  *buflen = 0;
 }
 else {
  if ((fd = open (filename, O_RDONLY)) == -1) {
   ucl_create_err (err, "cannot open file %s: %s",
     filename, strerror (errno));
   return 0;
  }
  if ((*buf = ucl_mmap (((void*)0), st.st_size, PROT_READ, MAP_SHARED, fd, 0)) == MAP_FAILED) {
   close (fd);
   ucl_create_err (err, "cannot mmap file %s: %s",
     filename, strerror (errno));
   *buf = ((void*)0);

   return 0;
  }
  *buflen = st.st_size;
  close (fd);
 }

 return 1;
}
