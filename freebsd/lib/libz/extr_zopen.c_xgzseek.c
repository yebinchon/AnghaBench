
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_off_t ;
typedef scalar_t__ fpos_t ;


 scalar_t__ gzseek (void*,int ,int) ;

__attribute__((used)) static fpos_t
xgzseek(void *cookie, fpos_t offset, int whence)
{
 return gzseek(cookie, (z_off_t)offset, whence);
}
