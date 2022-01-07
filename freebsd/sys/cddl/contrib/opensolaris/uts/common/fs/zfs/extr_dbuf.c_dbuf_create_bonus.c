
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dn_dbuf; int * dn_bonus; int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;


 int ASSERT (int ) ;
 int DMU_BONUS_BLKID ;
 int RW_WRITE_HELD (int *) ;
 int * dbuf_create (TYPE_1__*,int ,int ,int ,int *) ;

void
dbuf_create_bonus(dnode_t *dn)
{
 ASSERT(RW_WRITE_HELD(&dn->dn_struct_rwlock));

 ASSERT(dn->dn_bonus == ((void*)0));
 dn->dn_bonus = dbuf_create(dn, 0, DMU_BONUS_BLKID, dn->dn_dbuf, ((void*)0));
}
