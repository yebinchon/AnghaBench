
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fatalperror_errno (int,char const*,int ) ;

void
fatalperror(int f, const char *msg)
{
    fatalperror_errno(f, msg, errno);
}
