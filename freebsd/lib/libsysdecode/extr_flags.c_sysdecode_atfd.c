
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;

const char *
sysdecode_atfd(int fd)
{

 if (fd == AT_FDCWD)
  return ("AT_FDCWD");
 return (((void*)0));
}
