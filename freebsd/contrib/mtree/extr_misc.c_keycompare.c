
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ KEY ;


 int strcmp (int ,int ) ;

int
keycompare(const void *a, const void *b)
{

 return (strcmp(((const KEY *)a)->name, ((const KEY *)b)->name));
}
