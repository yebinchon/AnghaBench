
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; } ;
typedef TYPE_1__ DIR ;


 TYPE_1__* malloc (int) ;

DIR *
fdopendir(int fd)
{
 DIR *dp;

 dp = malloc(sizeof(*dp));
 if (dp == ((void*)0))
  return ((void*)0);
 dp->fd = fd;
 return dp;
}
