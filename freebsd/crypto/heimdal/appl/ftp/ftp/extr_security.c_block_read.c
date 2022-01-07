
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,unsigned char*,size_t) ;

__attribute__((used)) static int
block_read(int fd, void *buf, size_t len)
{
    unsigned char *p = buf;
    int b;
    while(len) {
 b = read(fd, p, len);
 if (b == 0)
     return 0;
 else if (b < 0)
     return -1;
 len -= b;
 p += b;
    }
    return p - (unsigned char*)buf;
}
