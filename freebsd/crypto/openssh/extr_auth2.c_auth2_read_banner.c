
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_2__ {int banner; } ;


 int O_RDONLY ;
 size_t atomicio (int ,int,char*,size_t) ;
 int close (int) ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 int open (int ,int ) ;
 TYPE_1__ options ;
 int read ;
 char* xmalloc (size_t) ;

char *
auth2_read_banner(void)
{
 struct stat st;
 char *banner = ((void*)0);
 size_t len, n;
 int fd;

 if ((fd = open(options.banner, O_RDONLY)) == -1)
  return (((void*)0));
 if (fstat(fd, &st) == -1) {
  close(fd);
  return (((void*)0));
 }
 if (st.st_size <= 0 || st.st_size > 1*1024*1024) {
  close(fd);
  return (((void*)0));
 }

 len = (size_t)st.st_size;
 banner = xmalloc(len + 1);
 n = atomicio(read, fd, banner, len);
 close(fd);

 if (n != len) {
  free(banner);
  return (((void*)0));
 }
 banner[n] = '\0';

 return (banner);
}
