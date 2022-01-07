
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EFAULT ;
 scalar_t__ suword32 (int *,int ) ;

__attribute__((used)) static int
futex_user_store(uint32_t *obj, uint32_t val)
{

 return (suword32(obj, val) != 0 ? EFAULT : 0);
}
