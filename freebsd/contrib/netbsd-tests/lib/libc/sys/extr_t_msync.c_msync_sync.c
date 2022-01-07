
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 char* MAP_FAILED ;
 int MAP_FILE ;
 int MAP_PRIVATE ;
 int O_CREAT ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_SET ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 char* malloc (size_t) ;
 scalar_t__ memcmp (char*,char const*,size_t) ;
 int memset (char*,char,size_t) ;
 char* mmap (int *,size_t,int,int,int,int ) ;
 scalar_t__ msync (char*,size_t,int) ;
 int munmap (char*,size_t) ;
 scalar_t__ off ;
 int open (int ,int,int) ;
 size_t page ;
 int path ;
 int strerror (int ) ;
 size_t strlen (char const*) ;
 int unlink (int ) ;
 int write (int,char const*,size_t) ;

__attribute__((used)) static const char *
msync_sync(const char *garbage, int flags)
{
 char *buf, *map = MAP_FAILED;
 const char *str = ((void*)0);
 size_t len;
 int fd, rv;





 buf = malloc(page);

 if (buf == ((void*)0))
  return ((void*)0);

 memset(buf, 'x', page);

 fd = open(path, O_RDWR | O_CREAT, 0700);

 if (fd < 0) {
  free(buf);
  return "failed to open";
 }

 ATF_REQUIRE_MSG(write(fd, buf, page) != -1, "write(2) failed: %s",
     strerror(errno));

 map = mmap(((void*)0), page, PROT_READ | PROT_WRITE, MAP_FILE|MAP_PRIVATE,
      fd, 0);

 if (map == MAP_FAILED) {
  str = "failed to map";
  goto out;
 }





 if (lseek(fd, off, SEEK_SET) != off) {
  str = "failed to seek";
  goto out;
 }

 len = strlen(garbage);
 rv = write(fd, garbage, len);

 if (rv != (ssize_t)len) {
  str = "failed to write garbage";
  goto out;
 }





 if (msync(map, page, flags) != 0) {
  str = "failed to msync";
  goto out;
 }

 if (memcmp(map + off, garbage, len) != 0) {
  str = "msync did not synchronize";
  goto out;
 }

out:
 free(buf);

 (void)close(fd);
 (void)unlink(path);

 if (map != MAP_FAILED)
  (void)munmap(map, page);

 return str;
}
