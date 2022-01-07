
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spa_name; } ;
typedef TYPE_1__ spa_t ;


 int AVL_ISIGN (int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
spa_name_compare(const void *a1, const void *a2)
{
 const spa_t *s1 = a1;
 const spa_t *s2 = a2;
 int s;

 s = strcmp(s1->spa_name, s2->spa_name);

 return (AVL_ISIGN(s));
}
