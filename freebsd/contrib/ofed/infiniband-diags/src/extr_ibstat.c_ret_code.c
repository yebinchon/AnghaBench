
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;

__attribute__((used)) static int ret_code(void)
{
 int e = errno;

 if (e > 0)
  return -e;
 return e;
}
