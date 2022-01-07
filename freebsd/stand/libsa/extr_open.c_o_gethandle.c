
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ f_flags; } ;


 int SOPEN_MAX ;
 TYPE_1__* files ;

__attribute__((used)) static int
o_gethandle(void)
{
 int fd;

 for (fd = 0; fd < SOPEN_MAX; fd++)
  if (files[fd].f_flags == 0)
   return (fd);
 return (-1);
}
