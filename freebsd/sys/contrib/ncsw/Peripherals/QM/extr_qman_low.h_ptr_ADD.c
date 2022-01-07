
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ void *ptr_ADD(void *a, uintptr_t b)
{
    return (void *)((uintptr_t)a + b);
}
