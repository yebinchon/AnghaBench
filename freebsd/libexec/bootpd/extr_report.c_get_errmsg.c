
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char const* strerror (int ) ;

const char *
get_errmsg()
{
 return strerror(errno);
}
