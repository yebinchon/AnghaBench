
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* b; } ;
typedef TYPE_1__ bdaddr_t ;



__attribute__((used)) static __inline int
bdaddr_any(const bdaddr_t *a)
{
 return (a->b[0] == 0 && a->b[1] == 0 && a->b[2] == 0 &&
  a->b[3] == 0 && a->b[4] == 0 && a->b[5] == 0);
}
