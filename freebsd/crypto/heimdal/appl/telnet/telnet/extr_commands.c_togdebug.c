
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_SOCKET ;
 int SO_DEBUG ;
 scalar_t__ SetSockOpt (scalar_t__,int ,int ,int ,...) ;
 scalar_t__ debug ;
 scalar_t__ net ;
 int perror (char*) ;
 int printf (char*) ;

__attribute__((used)) static int
togdebug()
{

    if (net > 0 &&
 (SetSockOpt(net, SOL_SOCKET, SO_DEBUG, debug)) < 0) {
     perror("setsockopt (SO_DEBUG)");
    }







    return 1;
}
