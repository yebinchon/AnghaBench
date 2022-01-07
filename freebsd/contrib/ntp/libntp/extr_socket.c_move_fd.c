
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int ENSURE (int) ;
 scalar_t__ FD_CHUNK ;
 scalar_t__ FD_PREFERRED_SOCKBOUNDARY ;
 scalar_t__ FOPEN_MAX ;
 int F_DUPFD ;
 scalar_t__ GETDTABLESIZE () ;
 int REQUIRE (int) ;
 int TRACE (int,char*) ;
 int close (int) ;
 int fcntl (int,int ,int) ;
 int max (int ,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

SOCKET
move_fd(
 SOCKET fd
 )
{
 ENSURE((int)fd >= 0);

 return fd;
}
