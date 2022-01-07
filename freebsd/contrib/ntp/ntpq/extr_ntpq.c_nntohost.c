
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 int FALSE ;
 scalar_t__ LIB_BUFLENGTH ;
 char const* nntohost_col (int *,scalar_t__,int ) ;

const char *
nntohost(
 sockaddr_u *netnum
 )
{
 return nntohost_col(netnum, LIB_BUFLENGTH - 1, FALSE);
}
