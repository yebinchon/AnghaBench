
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aux_guid; } ;
typedef TYPE_1__ spa_aux_t ;


 int AVL_CMP (int ,int ) ;

__attribute__((used)) static inline int
spa_aux_compare(const void *a, const void *b)
{
 const spa_aux_t *sa = (const spa_aux_t *)a;
 const spa_aux_t *sb = (const spa_aux_t *)b;

 return (AVL_CMP(sa->aux_guid, sb->aux_guid));
}
