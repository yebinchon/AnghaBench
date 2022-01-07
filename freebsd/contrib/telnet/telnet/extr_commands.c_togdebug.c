
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOL_SOCKET ;
 int SO_DEBUG ;
 scalar_t__ SetSockOpt (scalar_t__,int ,int ,int) ;
 scalar_t__ net ;
 int perror (char*) ;
 int printf (char*) ;
 int telnet_debug ;

__attribute__((used)) static int
togdebug(void)
{

    if (net > 0 &&
 (SetSockOpt(net, SOL_SOCKET, SO_DEBUG, telnet_debug)) < 0) {
     perror("setsockopt (SO_DEBUG)");
    }







    return 1;
}
