
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
typedef int CORE_ADDR ;


 int EIO ;
 int errno ;

__attribute__((used)) static int
nomemory (CORE_ADDR memaddr, char *myaddr, int len, int write,
   struct target_ops *t)
{
  errno = EIO;
  return 0;
}
