
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int size ;
typedef int curr ;


 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 scalar_t__ getsockopt (int,int ,int,void*,int*) ;
 scalar_t__ setsockopt (int,int ,int,void*,int) ;

void
set_buffer_size(int fd, int read)
{
}
