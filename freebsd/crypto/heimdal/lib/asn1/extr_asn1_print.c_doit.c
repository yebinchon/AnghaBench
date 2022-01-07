
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;


 int O_RDONLY ;
 int close (int) ;
 unsigned char* emalloc (size_t) ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 int free (unsigned char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int loop (unsigned char*,size_t,int ) ;
 int open (char const*,int ) ;
 size_t read (int,unsigned char*,size_t) ;

__attribute__((used)) static int
doit (const char *filename)
{
    int fd = open (filename, O_RDONLY);
    struct stat sb;
    unsigned char *buf;
    size_t len;
    int ret;

    if(fd < 0)
 err (1, "opening %s for read", filename);
    if (fstat (fd, &sb) < 0)
 err (1, "stat %s", filename);
    len = sb.st_size;
    buf = emalloc (len);
    if (read (fd, buf, len) != len)
 errx (1, "read failed");
    close (fd);
    ret = loop (buf, len, 0);
    free (buf);
    return ret;
}
