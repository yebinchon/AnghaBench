
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMSG_SPACE (int) ;

int
inet6_option_space(int nbytes)
{
 nbytes += 2;
 return(CMSG_SPACE((nbytes + 7) & ~7));
}
