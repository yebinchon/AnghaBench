
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int e ;
typedef int SSL ;


 int remote_write (int *,int,char*,int) ;

__attribute__((used)) static void
send_eof(SSL* ssl, int fd)
{
 char e[] = {0x04, 0x0a};
 remote_write(ssl, fd, e, sizeof(e));
}
