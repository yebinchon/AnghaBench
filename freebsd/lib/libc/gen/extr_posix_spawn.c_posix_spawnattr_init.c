
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __posix_spawnattr {int dummy; } ;
typedef int * posix_spawnattr_t ;


 int * calloc (int,int) ;
 int errno ;

int
posix_spawnattr_init(posix_spawnattr_t *ret)
{
 posix_spawnattr_t sa;

 sa = calloc(1, sizeof(struct __posix_spawnattr));
 if (sa == ((void*)0))
  return (errno);


 *ret = sa;
 return (0);
}
