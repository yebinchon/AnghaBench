
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char const*,int ) ;
 scalar_t__ pager_output (char*) ;
 int printf (char*,char const*,char*) ;
 size_t read (int,char*,int) ;
 char* strerror (int ) ;

int
pager_file(const char *fname)
{
    char buf[80];
    size_t hmuch;
    int fd;
    int result;

    if ((fd = open(fname, O_RDONLY)) == -1) {
 printf("can't open '%s': %s\n", fname, strerror(errno));
 return(-1);
    }

    for (;;) {
 hmuch = read(fd, buf, sizeof(buf) - 1);
 if (hmuch == -1) {
     result = -1;
     break;
 }
 if (hmuch == 0) {
     result = 0;
     break;
 }
 buf[hmuch] = 0;
 if (pager_output(buf)) {
     result = 1;
     break;
 }
    }
    close(fd);
    return(result);
}
