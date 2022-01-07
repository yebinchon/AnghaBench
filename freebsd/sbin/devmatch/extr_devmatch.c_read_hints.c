
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct stat {size_t st_size; } ;


 scalar_t__ ENOENT ;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*,char const*,...) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,struct stat*) ;
 void* malloc (size_t) ;
 int open (char const*,int ) ;
 size_t read (int,void*,size_t) ;

__attribute__((used)) static void *
read_hints(const char *fn, size_t *len)
{
 void *h;
 int fd;
 struct stat sb;

 fd = open(fn, O_RDONLY);
 if (fd < 0) {
  if (errno == ENOENT)
   return ((void*)0);
  err(1, "Can't open %s for reading", fn);
 }
 if (fstat(fd, &sb) != 0)
  err(1, "Can't fstat %s\n", fn);
 h = malloc(sb.st_size);
 if (h == ((void*)0))
  err(1, "not enough space to read hints file of %ju bytes", (uintmax_t)sb.st_size);
 if (read(fd, h, sb.st_size) != sb.st_size)
  err(1, "Can't read in %ju bytes from %s", (uintmax_t)sb.st_size, fn);
 close(fd);
 *len = sb.st_size;
 return h;
}
