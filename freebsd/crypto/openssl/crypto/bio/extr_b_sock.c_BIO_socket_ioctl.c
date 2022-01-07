
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ARG ;
 int SYS_F_IOCTLSOCKET ;
 int SYSerr (int ,int ) ;
 int get_last_socket_error () ;
 int ioctlsocket (int,long,char*) ;

int BIO_socket_ioctl(int fd, long type, void *arg)
{
    int i;
    i = ioctlsocket(fd, type, arg);

    if (i < 0)
        SYSerr(SYS_F_IOCTLSOCKET, get_last_socket_error());
    return i;
}
