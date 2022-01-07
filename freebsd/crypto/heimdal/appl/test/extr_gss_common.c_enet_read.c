
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int errx (int,char*) ;
 scalar_t__ net_read (int,void*,size_t) ;

__attribute__((used)) static void
enet_read(int fd, void *buf, size_t len)
{
    ssize_t ret;

    ret = net_read (fd, buf, len);
    if (ret == 0)
 errx (1, "EOF in read");
    else if (ret < 0)
 errx (1, "read");
}
