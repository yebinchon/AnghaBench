
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int* steps; } ;


 int STEPS_BIT ;

__attribute__((used)) static inline bool
path_took_left(struct path *p)
{
 bool result;

 result = p->steps[0] & 0x1;
 p->steps[0] = (p->steps[0] >> 1) | (p->steps[1] << (STEPS_BIT - 1));
 p->steps[1] >>= 1;
 return (result);
}
