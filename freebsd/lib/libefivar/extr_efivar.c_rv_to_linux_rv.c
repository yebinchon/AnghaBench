
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;

__attribute__((used)) static int
rv_to_linux_rv(int rv)
{
 if (rv == 0)
  rv = 1;
 else
  rv = -errno;
 return (rv);
}
