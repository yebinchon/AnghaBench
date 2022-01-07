
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int rtable ;


 int SOL_SOCKET ;
 int SO_RTABLE ;
 int errno ;
 int error (char*,int,char*) ;
 int getsockopt (int,int ,int ,int*,int*) ;
 char* strerror (int ) ;
 char* sys_get_rdomain (int) ;
 int xasprintf (char**,char*,int) ;

char *
get_rdomain(int fd)
{
 return ((void*)0);

}
