
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char const*,int ) ;

int os_file_exists(const char *fname)
{
 return access(fname, F_OK) == 0;
}
