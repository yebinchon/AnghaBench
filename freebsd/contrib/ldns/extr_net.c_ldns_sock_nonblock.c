
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,...) ;
 scalar_t__ ioctlsocket (int,int ,unsigned long*) ;

__attribute__((used)) static void
ldns_sock_nonblock(int sockfd)
{
}
