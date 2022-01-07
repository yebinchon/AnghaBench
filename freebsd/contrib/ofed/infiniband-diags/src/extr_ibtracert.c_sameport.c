
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ portguid; scalar_t__ lid; } ;
typedef TYPE_1__ Port ;


 scalar_t__ force ;

__attribute__((used)) static int sameport(Port * a, Port * b)
{
 return a->portguid == b->portguid || (force && a->lid == b->lid);
}
