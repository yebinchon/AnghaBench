
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EFAULT ;
 scalar_t__ fueword32 (int *,int *) ;

__attribute__((used)) static int
futex_user_load(uint32_t *obj, uint32_t *val)
{

 return (fueword32(obj, val) != 0 ? EFAULT : 0);
}
