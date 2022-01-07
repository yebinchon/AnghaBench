
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,size_t) ;

__attribute__((used)) static int
dnsc_read_from_file(char *fname, char *buf, size_t count)
{
    int fd;
    fd = open(fname, O_RDONLY);
    if (fd == -1) {
        return -1;
    }
    if (read(fd, buf, count) != (ssize_t)count) {
        close(fd);
        return -2;
    }
    close(fd);
    return 0;
}
