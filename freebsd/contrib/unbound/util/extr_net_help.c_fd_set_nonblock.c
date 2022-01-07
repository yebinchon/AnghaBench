
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int WSAGetLastError () ;
 int errno ;
 int fcntl (int,int ,...) ;
 scalar_t__ ioctlsocket (int,int ,unsigned long*) ;
 int log_err (char*,int ) ;
 int strerror (int ) ;
 int wsa_strerror (int ) ;

int
fd_set_nonblock(int s)
{
 return 1;
}
