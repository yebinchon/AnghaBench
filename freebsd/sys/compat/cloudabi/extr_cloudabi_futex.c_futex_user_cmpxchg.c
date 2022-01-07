
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EFAULT ;
 scalar_t__ casueword32 (int *,int ,int *,int ) ;

__attribute__((used)) static int
futex_user_cmpxchg(uint32_t *obj, uint32_t cmp, uint32_t *old, uint32_t new)
{

 return (casueword32(obj, cmp, old, new) != 0 ? EFAULT : 0);
}
